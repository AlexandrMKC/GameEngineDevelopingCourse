// /*******************************************************************************
// The content of this file includes portions of the AUDIOKINETIC Wwise Technology
// released in source code form as part of the SDK installer package.

// Commercial License Usage

// Licensees holding valid commercial licenses to the AUDIOKINETIC Wwise Technology
// may use this file in accordance with the end user license agreement provided 
// with the software or, alternatively, in accordance with the terms contained in a
// written agreement between you and Audiokinetic Inc.

//   Copyright (c) 2025 Audiokinetic Inc.
// *******************************************************************************/

#include <jni.h>
#include "SDL_main.h"
#include <SDL.h>

#include <AK/SoundEngine/Common/AkSoundEngine.h>

#include "IntegrationDemo.h"
#include "Helpers.h"
#include "SDLWindow.h"
#include "SDLInputMgr.h"
#include "AndroidUtils.h"

SDLInputMgr g_InputMgr;
SDL_Window* g_hWnd;

void OnSDLEvent(const SDL_Event& in_event)
{
    AkOSChar szError[500];
	if (in_event.type == SDL_APP_WILLENTERBACKGROUND)
	{
		IntegrationDemo::Instance().Pause();
	}
	else if (in_event.type == SDL_APP_DIDENTERFOREGROUND)
	{
		IntegrationDemo::Instance().Resume();
	}
    else if (in_event.type == SDL_WINDOWEVENT)
    {
        if (in_event.window.event == SDL_WINDOWEVENT_RESIZED)
        {
			int sdlWidth = in_event.window.data1;
			int sdlHeight = in_event.window.data2;
			AKPLATFORM::OutputDebugMsgV("IntegrationDemo window resized to %dx%d\n", sdlWidth, sdlHeight);
			SDL_GetWindowSizeInPixels(g_hWnd, &sdlWidth, &sdlHeight);
			bool bSuccess = IntegrationDemo::Instance().ResetVideo(g_hWnd, szError, IntegrationDemoHelpers::AK_ARRAYSIZE(szError), sdlWidth, sdlHeight);
			if (!bSuccess)
			{
				AKPLATFORM::OutputDebugMsgV("IntegrationDemo failed to reset video: %s\n", szError);
			}
		}
    }
}

int main(int argc, char *argv[])
{
    g_hWnd = (SDL_Window*)CreateSDLWindow(0, 0, SDL_WINDOW_FULLSCREEN | SDL_WINDOW_RESIZABLE);
	if (g_hWnd == nullptr)
		return 1;
	int sdlWidth, sdlHeight;
	SDL_GetWindowSizeInPixels(g_hWnd, &sdlWidth, &sdlHeight);

	AkInitSettings& initSettings = IntegrationDemo::Instance().GetInitSettings();
	AkPlatformInitSettings& platformInitSettings = IntegrationDemo::Instance().GetPlatformInitSettings();
	platformInitSettings.bVerboseSink = true;
	//platformInitSettings.eAudioAPI = AkAudioAPI_OpenSL_ES; // AkAudioAPI_AAudio, AkAudioAPI_OpenSL_ES;
	//platformInitSettings.eAudioPath = AkAudioPath_Legacy;  // AkAudioPath_Legacy, AkAudioPath_LowLatency, AkAudioPath_Exclusive
	//initSettings.settingsMainOutput.channelConfig = AkChannelConfig::Standard(AK_SPEAKER_SETUP_STEREO);

#ifndef AK_OPTIMIZED
	// Dynamic ports makes profiling difficult with Android devices, use default discovery + 1
	AkCommSettings& commSettings = IntegrationDemo::Instance().GetCommSettings();
	commSettings.ports.uCommand = AK_COMM_DEFAULT_DISCOVERY_PORT + 1;
#endif

	JNIEnv * env = (JNIEnv*)SDL_AndroidGetJNIEnv();
	env->GetJavaVM(&platformInitSettings.pJavaVM);
	platformInitSettings.jActivity = env->NewGlobalRef((jobject)SDL_AndroidGetActivity());
    
	AkOSChar szError[500];
	AK::Android::InitLLIO();
	if ( !IntegrationDemo::Instance().Init( g_hWnd, &g_InputMgr, szError, IntegrationDemoHelpers::AK_ARRAYSIZE(szError), sdlWidth, sdlHeight ) )
	{
		printf( AKTEXT("Failed to initialize the Integration Demo.\r\n%s"), szError );
		return 1;
	}
	AK::Android::AddLLIOBasePaths();
	g_InputMgr.SetEventHandler(OnSDLEvent);
	
	// The application's main loop
	// Each iteration represents 1 frame
	while ( true )
	{
		// Records the starting time of the current frame
		IntegrationDemo::Instance().StartFrame();

		// Process the current frame, quit if Update() is false.
		if (IntegrationDemo::Instance().IsGamePaused())
		{
			// Pump SDL events manually
			g_InputMgr.Update();
		}
		else
		{
			// Let IntegrationDemo drive the show.
			if ( ! IntegrationDemo::Instance().Update() )
			{
				break;
			}
		}
		IntegrationDemo::Instance().Render();
		
		// Ends the frame and regulates the application's framerate
		IntegrationDemo::Instance().EndFrame();
	}

	// Terminate the various components of the application
	IntegrationDemo::Instance().Term();

	env->DeleteGlobalRef(platformInitSettings.jActivity);
	return 0;
}
