#pragma once
#include <AudioEngine/export.h>
#include <IAudioSystem.h>

#include <memory.h>
#include <string>
#include <vector>

namespace GameEngine::Audio {
	class AUDIO_ENGINE_API AudioEngine {
	public:
		using Ptr = std::unique_ptr<AudioEngine>;

	public:
		AudioEngine();
		~AudioEngine();

	public:
		uint64_t CreateNewObj();
		void DeleteObj(uint64_t objID);
		void PlayAudioEvent(uint64_t objID, std::string eventName);
		void Update();
		void SoundsLoad(std::vector<std::string>& soundNames);

	private:
		AudioSystem::IAudioSystem::Ptr m_audioSystem;
	};

	extern AUDIO_ENGINE_API AudioEngine* g_AudioEngine;
}