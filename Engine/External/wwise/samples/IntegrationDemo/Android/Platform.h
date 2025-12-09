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

// Platform.h
/// \file 
/// Contains platform-specific helpers for the Windows platform.

#pragma once

// Soundbanks will be automatically deployed to your Android device as part of the APK, if you 
// place the generated soundbanks under $WWISESDK/samples/IntegrationDemo/WwiseProject/GeneratedSoundBanks/Android
#define SOUND_BANK_PATH ""

// Defines for button name strings
#define UG_BUTTON1_NAME  "A"
#define UG_BUTTON2_NAME  "B"
#define UG_BUTTON3_NAME  "X"
#define UG_BUTTON4_NAME  "Y"
#define UG_BUTTON5_NAME  ""
#define UG_BUTTON6_NAME  ""
#define UG_BUTTON7_NAME  ">"
#define UG_BUTTON8_NAME  "<"
#define UG_BUTTON9_NAME  ""
#define UG_BUTTON10_NAME ""  
#define UG_BUTTON11_NAME ""
#define UG_RIGHT_STICK	 ""
#define UG_LEFT_STICK	 ""
#define OS_BUTTON_NAME   ""
#define DIRECTIONAL_TYPE "Dpad"

#define RESOURCES_BUTTON	UG_BUTTON11_NAME
#define HELP_BUTTON			UG_BUTTON7_NAME
#define ACTION_BUTTON		UG_BUTTON1_NAME
#define BACK_BUTTON			UG_BUTTON2_NAME

#define INTEGRATIONDEMO_SCREEN_CHAR_WIDTH	60

#define __AK_OSCHAR_SNPRINTF snprintf

#define INTEGRATIONDEMO_VIRTUAL_GAMEPAD_OVERLAY

#define INTEGRATIONDEMO_APP_LIFECYCLE
