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
#include "DemoOptionsUtil.h"
#include "../MenuSystem/ToggleControl.h"
#include <AK/SoundEngine/Common/AkSoundEngine.h>

#include <vector>

namespace demoOptionsUtil
{
	void PreInitWwise() {}
	void PostInitWwise() {}

	AkUInt32 GetDefaultSpeakerConfigs(const char**& out_pNames, AkChannelConfig*& out_pConfigs)
	{
		static const char* names[] = { "Automatic", "Stereo", "5.1" };
		const size_t uNumNames = sizeof(names) / sizeof(names[0]);

		int i = 0;
		static AkChannelConfig configs[uNumNames];
		configs[i++].SetStandard(0);
		configs[i++].SetStandard(AK_SPEAKER_SETUP_STEREO);
		configs[i++].SetStandard(AK_SPEAKER_SETUP_5POINT1);

		out_pNames = names;
		out_pConfigs = configs;
		
		return i;
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

		// AkAPI
		newToggle = new ToggleControl(*in_pParent);
		newToggle->SetLabel(s_labelAudioAPI);
		newToggle->AddOption("Automatic", (void*)AkAPI_Default);
		newToggle->AddOption("PulseAudio", (void*)AkAPI_PulseAudio);
		newToggle->AddOption("ALSA", (void*)AkAPI_ALSA);

		switch (pd_settings->eAudioAPI)
		{
		case AkAPI_Default:idx = 0; break;
		case AkAPI_PulseAudio: idx = 1; break;
		case AkAPI_ALSA: idx = 2; break;
		};

		newToggle->SetSelectedIndex(idx);
		in_Controls.push_back(newToggle);

		// Sample Format
		newToggle = new ToggleControl(*in_pParent);
		newToggle->SetLabel(s_labelSampleFormat);
		newToggle->AddOption("16 bit signed integer", (void*)AK_INT);
		newToggle->AddOption("32 bit floating point", (void*)AK_FLOAT);
		newToggle->SetSelectedIndex(pd_settings->sampleType);
		in_Controls.push_back(newToggle);
	}

	void FillPlatformSpecificSettings(std::vector<Control*>& in_Controls, AkPlatformInitSettings* io_settings)
	{
		for (size_t i = 0; i < in_Controls.size(); i++)
		{
			if (in_Controls[i]->GetLabel() == s_labelRate)
				io_settings->uSampleRate = (AkUInt32)(AkUIntPtr)((ToggleControl*)in_Controls[i])->SelectedValue();
			else if (in_Controls[i]->GetLabel() == s_labelAudioAPI)
				io_settings->eAudioAPI = (AkAudioAPI)(AkUIntPtr)((ToggleControl*)in_Controls[i])->SelectedValue();
			else if (in_Controls[i]->GetLabel() == s_labelSampleFormat)
				io_settings->sampleType = (AkDataTypeID)(AkUIntPtr)((ToggleControl*)in_Controls[i])->SelectedValue();
		}
	}

	void UpdatePlatformSpecificControls(std::vector<Control*>& in_Controls)
	{

	}

};
