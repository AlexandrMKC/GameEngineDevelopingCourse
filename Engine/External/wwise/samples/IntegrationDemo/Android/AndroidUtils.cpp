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

#include "AndroidUtils.h"
#include <AK/SoundEngine/Common/AkTypes.h>
#include "IntegrationDemo.h"
#include "AkFileHelpersAndroid.h"
#include "../MenuSystem/ToggleControl.h"

void AK::Android::InitLLIO()
{
	AkPlatformInitSettings& pfSettings = IntegrationDemo::Instance().GetPlatformInitSettings();
	if ( IntegrationDemo::Instance().IOManager().Init(pfSettings.pJavaVM, pfSettings.jActivity) != AK_Success )
		AKPLATFORM::OutputDebugMsgV("Cannot initialize Android IO\n");
}

void AK::Android::AddLLIOBasePaths()
{
	// We should add some writable paths for the AkRecorder plug-in and other debug utilities.

	// Add the internal application cache path (which is not easily accessible from a PC)
	// IntegrationDemo::Instance().IOManager().AddBasePath( g_AkAndroidApp->activity->internalDataPath );

	// Also add the external cache path if available (which is easily accessible from a PC)
	// We add it AFTER the internal one so it takes precedence.
	AkPlatformInitSettings& pfSettings = IntegrationDemo::Instance().GetPlatformInitSettings();
	static char tmpDirPath[1024];
	if (CAkFileHelpersAndroid::GetWritablePath(CAkFileHelpersAndroid::ExternalCacheDir, pfSettings.pJavaVM, pfSettings.jActivity, tmpDirPath, 1024) == AK_Success)
	{
		IntegrationDemo::Instance().IOManager().AddBasePath(tmpDirPath);
	}
}
