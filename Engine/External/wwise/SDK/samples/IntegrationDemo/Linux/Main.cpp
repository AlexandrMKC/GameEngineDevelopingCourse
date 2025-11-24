/*******************************************************************************
The content of this file includes portions of the AUDIOKINETIC Wwise Technology
released in source code form as part of the SDK installer package.

Commercial License Usage

Licensees holding valid commercial licenses to the AUDIOKINETIC Wwise Technology
may use this file in accordance with the end user license agreement provided 
with the software or, alternatively, in accordance with the terms contained in a
written agreement between you and Audiokinetic Inc.

  Copyright (c) 2025 Audiokinetic Inc.
*******************************************************************************/

// main.cpp
/// \file 
/// Contains the entry point for the application.

/////////////////////////
//  INCLUDES
/////////////////////////

#include "stdafx.h"

#include <malloc.h>
#include "Helpers.h"
#include "IntegrationDemo.h"
#include "Platform.h"

#include "SDLWindow.h"

#include "SDLInputMgr.h"
SDLInputMgr g_InputMgr;

int main( int argc, char *argv[] )
{
	int width = 853, height = 480;
	void * hWnd = CreateSDLWindow(width, height);
	if (hWnd == nullptr)
		return 1;

	AkInitSettings& initSettings = IntegrationDemo::Instance().GetInitSettings();
	initSettings.szPluginDLLPath = (AkOSChar*)DLL_PATH;

	AkOSChar szError[500];
	if ( !IntegrationDemo::Instance().Init( hWnd, &g_InputMgr, szError, IntegrationDemoHelpers::AK_ARRAYSIZE(szError), width, height ) )
	{
		printf( AKTEXT("Failed to initialize the Integration Demo.\r\n%s"), szError );
		return 1;
	}
	
	// The application's main loop
	// Each iteration represents 1 frame
	while ( true )
	{
		// Records the starting time of the current frame
		IntegrationDemo::Instance().StartFrame();

		// Process the current frame, quit if Update() is false.
		if ( ! IntegrationDemo::Instance().Update() )
		{
			break;
		}
		IntegrationDemo::Instance().Render();
		
		// Ends the frame and regulates the application's framerate
		IntegrationDemo::Instance().EndFrame();
	}

	// Terminate the various components of the application
	IntegrationDemo::Instance().Term();
}
