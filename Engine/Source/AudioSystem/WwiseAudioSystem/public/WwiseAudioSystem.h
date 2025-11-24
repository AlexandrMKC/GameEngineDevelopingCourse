#pragma once
#include <AudioSystem/WwiseAudioSystem/export.h>
#include <IAudioSystem.h>

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

#include <string>

namespace GameEngine::Audio::WwiseAudioSystem {

	class WWISE_AUDIO_SYSTEM_API WwiseAudioSystem final: public AudioSystem::IAudioSystem {

	public:
		void Init() override;
		void Update() override;
		void Terminate() override;
		void SoundLoad(std::string soundName) override;
		uint64_t CreateNewObj() override;
		void DeleteObj(uint64_t objID) override;
		void PostEvent(uint64_t objID, std::string eventName) override;

	private:
		bool SoundBankLoad(std::string bank);

		AkGameObjectID GetNewObjectID();

	private:
		AkGameObjectID m_lastObjectID = 0;
		CAkFilePackageLowLevelIODeferred* m_pLowLevelIO;
	};

}