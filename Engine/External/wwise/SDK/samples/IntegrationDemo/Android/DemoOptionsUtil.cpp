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

#include "stdafx.h"
#include <android/log.h>
#include "DemoOptionsUtil.h"
#include "../MenuSystem/ToggleControl.h"
#include "AkFileHelpers.h"
#include "IntegrationDemo.h"
#include "AndroidUtils.h"

#include <AK/SoundEngine/Common/AkSoundEngine.h>

const char* s_labelAAudio = "Allow AAudio API";
const char* s_labelOpenSL = "Allow OpenSL ES API";
const char* s_labelDolbyAtmos = "Allow Dolby Atmos";
const char* s_labelAndroidSpat = "Allow Android Spatializer";
const char* s_labelAudioPath = "Audio Path";
const char* s_labelVerbose = "Verbose Debug Logcat";

static AkUIntPtr s_APIBits[] = {
	AkAudioAPI_AAudio,
	AkAudioAPI_OpenSL_ES,
	AkAudioAPI_DolbyAtmos,
	AkAudioAPI_AndroidSpatializer,
};
static const char* s_labelAPIBits[] = {
	"Allow AAudio API",
	"Allow OpenSL ES API",
	"Allow Dolby Atmos",
	"Allow Android Spatializer",
};
static const int kNumAPIBits = 4;

namespace demoOptionsUtil
{
	void PreInitWwise()
	{
		AK::Android::InitLLIO();
	}

	void PostInitWwise()
	{
		AK::Android::AddLLIOBasePaths();
	}

	AkUInt32 GetDefaultSpeakerConfigs(const char**& out_pNames, AkChannelConfig*& out_pConfigs)
	{
		static const char* names[] = { "Automatic", "Mono", "Stereo", "5.1", "7.1", "5.1.4", "7.1.4" };
		const size_t uNumNames = sizeof(names) / sizeof(names[0]);

		int i = 0;
		static AkChannelConfig configs[uNumNames];
		configs[i++].SetStandard(0);
		configs[i++].SetStandard(AK_SPEAKER_SETUP_MONO);
		configs[i++].SetStandard(AK_SPEAKER_SETUP_STEREO);
		configs[i++].SetStandard(AK_SPEAKER_SETUP_5POINT1);
		configs[i++].SetStandard(AK_SPEAKER_SETUP_7POINT1);
		configs[i++].SetStandard(AK_SPEAKER_SETUP_DOLBY_5_1_4);
		configs[i++].SetStandard(AK_SPEAKER_SETUP_DOLBY_7_1_4);

		out_pNames = names;
		out_pConfigs = configs;
		
		return i;
	}
	
	void InitAndroidStreamOptions(std::vector<Control*>& in_Controls, Page* in_pParent, const AkPlatformInitSettings* pfSettings)
	{
		ToggleControl* newToggle;
		
		static int apiBits[] = { AkAudioAPI_AAudio, AkAudioAPI_OpenSL_ES, AkAudioAPI_DolbyAtmos, AkAudioAPI_AndroidSpatializer };
		for (int i=0; i < kNumAPIBits; i++)
		{
			newToggle = new ToggleControl(*in_pParent);
			newToggle->SetLabel(s_labelAPIBits[i]);
			newToggle->AddOption("Yes", (void*)(s_APIBits[i]));
			newToggle->AddOption("No", (void*)0);
			newToggle->SetSelectedIndex((pfSettings->eAudioAPI & s_APIBits[i]) ? 0 : 1);
			in_Controls.push_back(newToggle);
		}
		
		newToggle = new ToggleControl(*in_pParent);
		newToggle->SetLabel(s_labelAudioPath);
		newToggle->AddOption("Legacy", (void*)AkAudioPath_Legacy);
		newToggle->AddOption("LowLatency", (void*)AkAudioPath_LowLatency);
		newToggle->AddOption("Exclusive", (void*)AkAudioPath_Exclusive);

		newToggle->SetSelectedIndex((int)pfSettings->eAudioPath);
		in_Controls.push_back(newToggle);
	}

	void InitPlatformSpecificControls(std::vector<Control*>& in_Controls, Page* in_pParent)
	{
		//Add platform specific controls
		AK::IAkGlobalPluginContext* pGlobalCtx = AK::SoundEngine::GetGlobalPluginContext();
		const AkPlatformInitSettings* pd_settings = pGlobalCtx->GetPlatformInitSettings();
		int idx = 0;
		char buf[20];

		ToggleControl* newToggle = new ToggleControl(*in_pParent);
		AddSampleRateOption(newToggle, pd_settings->uSampleRate);		
		in_Controls.push_back(newToggle);

		demoOptionsUtil::InitAndroidStreamOptions(in_Controls, in_pParent, pd_settings);

		newToggle = new ToggleControl(*in_pParent);
		newToggle->SetLabel(s_labelVerbose);
		newToggle->AddOption("No", (void*)0);
		newToggle->AddOption("Yes", (void*)1);
		newToggle->SetSelectedIndex(pd_settings->bVerboseSink);
		in_Controls.push_back(newToggle);
	}

	void FillPlatformSpecificSettings(std::vector<Control*>& in_Controls, AkPlatformInitSettings* io_settings)
	{
		AkUIntPtr eAudioAPI = 0;
		for (size_t i = 0; i < in_Controls.size(); i++)
		{
			if (in_Controls[i]->GetLabel() == s_labelRate)
				io_settings->uSampleRate = (AkUInt32)(AkUIntPtr)((ToggleControl*)in_Controls[i])->SelectedValue();
			else if (in_Controls[i]->GetLabel() == s_labelVerbose)
				io_settings->bVerboseSink = (AkUIntPtr)((ToggleControl*)in_Controls[i])->SelectedValue() != 0;
			else if (in_Controls[i]->GetLabel() == s_labelAudioPath)
				io_settings->eAudioPath = (AkAudioPath)(AkUIntPtr)((ToggleControl*)in_Controls[i])->SelectedValue();
			else
			{
				for (int j=0; j < kNumAPIBits; j++)
				{
					if (in_Controls[i]->GetLabel() == s_labelAPIBits[j])
						eAudioAPI |= (AkUIntPtr)((ToggleControl*)in_Controls[i])->SelectedValue();
				}
			}
		}
		io_settings->eAudioAPI = (AkAudioAPI)eAudioAPI;
	}
		
	void UpdatePlatformSpecificControls(std::vector<Control*>& in_Controls)
	{

	}
}