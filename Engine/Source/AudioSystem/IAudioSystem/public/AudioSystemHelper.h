#pragma once
#include <IAudioSystem.h>
#include <AudioSystem/IAudioSystem/export.h>

#include <string>

namespace GameEngine::Audio::AudioSystem
{

	class AUDIO_SYSTEM_API AudioSystemHelper final
	{
	public:
		static std::shared_ptr<IAudioSystem> CreateAudioSystem(const std::string& AudioSystemName);
	};
	
}