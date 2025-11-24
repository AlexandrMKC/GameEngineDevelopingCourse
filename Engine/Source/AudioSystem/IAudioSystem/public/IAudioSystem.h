#pragma once
#include <string>
#include <unordered_map>
#include <memory.h>

namespace GameEngine::Audio::AudioSystem {

	enum class AudioSystemName : uint8_t
	{
		WWISE = 0,
	};

	const std::unordered_map<std::string, AudioSystemName> k_AudioSystemNameMap =
	{
		{"WWISE", AudioSystemName::WWISE},
	};

	class IAudioSystem {
	public:
		using Ptr = std::shared_ptr<IAudioSystem>;

	public:
		IAudioSystem() = default;
		virtual void Init() = 0;
		virtual void Update() = 0;
		virtual void Terminate() = 0;

		virtual void SoundLoad(std::string soundName) = 0;

		virtual uint64_t CreateNewObj() = 0;
		virtual void DeleteObj(uint64_t objID) = 0;

		virtual void PostEvent(uint64_t objID, std::string eventName) = 0;
	};

}