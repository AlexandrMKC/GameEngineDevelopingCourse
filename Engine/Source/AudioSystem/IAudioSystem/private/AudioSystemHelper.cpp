#include <AudioSystemHelper.h>
#include <WwiseAudioSystem.h>

#include <memory.h>

namespace GameEngine::Audio::AudioSystem {

	std::shared_ptr<IAudioSystem> AudioSystemHelper::CreateAudioSystem(const std::string& AudioSystemName)
	{
		const auto& it = k_AudioSystemNameMap.find(AudioSystemName);

		switch (it->second)
		{
		case AudioSystemName::WWISE:
			return std::make_shared<WwiseAudioSystem::WwiseAudioSystem>();
		default:
			return std::make_shared<WwiseAudioSystem::WwiseAudioSystem>();
		}
	}

}