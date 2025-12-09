#pragma once
#include <AudioEngine/export.h>

#include <AK/SoundEngine/Common/AkMemoryMgr.h>
#include <AK/SoundEngine/Common/AkMemoryMgrModule.h>

#include <AK/SoundEngine/Common/IAkStreamMgr.h>
#include <AkFilePackageLowLevelIODeferred.h>

#include <AK/SpatialAudio/Common/AkSpatialAudio.h> 

#ifndef AK_OPTIMIZED
#include <AK/Comm/AkCommunication.h>
#endif

#include <AK/Tools/Common/AkPlatformFuncs.h>
#include <AK/SoundEngine/Common/AkQueryParameters.h>
#include <AK/SoundEngine/Common/AkCallback.h>

namespace GameEngine::Audio 
{
	class AUDIO_ENGINE_API AudioEngine final
	{
	public:
		using Ptr = std::unique_ptr<AudioEngine>;

	public:
		AudioEngine();
		~AudioEngine();

	public:
		uint64_t CreateNewObj();
		void DeleteObj(uint64_t objID);
		void PlayAudioEvent(uint64_t objID, const std::string& eventName);
		void Update();
		void SoundBankLoad(const std::string& bank);
		void SoundBanksLoad(const std::vector<std::string>& soundNames);

	private:
		AkGameObjectID GetNewObjectID();

	private:
		AkGameObjectID m_lastObjectID = 0;
		CAkFilePackageLowLevelIODeferred* m_pLowLevelIO;
	};

	extern AUDIO_ENGINE_API AudioEngine* g_AudioEngine;
}