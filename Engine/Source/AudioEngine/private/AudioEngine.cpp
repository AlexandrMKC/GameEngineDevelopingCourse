#include <AudioEngine.h>

namespace GameEngine::Audio {

	AudioEngine* g_AudioEngine = nullptr;

	AudioEngine::AudioEngine()
	{
		/*m_audioSystem = AudioSystem::AudioSystemHelper::CreateAudioSystem("WWISE");

		m_audioSystem->Init();*/

	}

	AudioEngine::~AudioEngine()
	{
		//m_audioSystem->Terminate();
	}

	void AudioEngine::Update() 
	{
		//m_audioSystem->Update();
	}

	void AudioEngine::SoundsLoad(std::vector<std::string>& soundNames)
	{
		for (auto& sound : soundNames) {
			//m_audioSystem->SoundLoad(sound);
		}
	}

	uint64_t AudioEngine::CreateNewObj() {
		return 0;
	}

	void AudioEngine::DeleteObj(uint64_t objID) {
		//m_audioSystem->DeleteObj(objID);
	}

	void AudioEngine::PlayAudioEvent(uint64_t objID, std::string eventName) {
		//m_audioSystem->PostEvent(objID, eventName);
	}

}