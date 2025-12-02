#include <AudioEngine.h>

#include <AK/Tools/Common/AkPlatformFuncs.h>
#include <AK/SoundEngine/Common/AkSoundEngine.h>
#include <AK/SpatialAudio/Common/AkSpatialAudio.h>

#include <FileSystem.h>

namespace GameEngine::Audio 
{

	AudioEngine* g_AudioEngine = nullptr;

	AudioEngine::AudioEngine(): m_pLowLevelIO(new CAkFilePackageLowLevelIODeferred())
	{
        AkMemSettings memSettings{};
        AK::MemoryMgr::GetDefaultSettings(memSettings);
        bool resMemoryMrg = AK::MemoryMgr::Init(&memSettings);
        assert(resMemoryMrg);

        AkStreamMgrSettings stmSettings{};
        AK::StreamMgr::GetDefaultSettings(stmSettings);
        bool resStreamMrg = AK::StreamMgr::Create(stmSettings);
        assert(resStreamMrg);

        AkDeviceSettings deviceSettings{};
        AK::StreamMgr::GetDefaultDeviceSettings(deviceSettings);
        bool resLowLevelIO = m_pLowLevelIO->Init(deviceSettings);
        assert(resLowLevelIO);

        auto pathToSounds = Core::g_FileSystem->GetFilePath("Sounds/");
        bool resSetPath = m_pLowLevelIO->SetBasePath(pathToSounds.c_str());
        assert(resSetPath);

        AkInitSettings initSettings{};
        AkPlatformInitSettings platformInitSettings{};
        AK::SoundEngine::GetDefaultInitSettings(initSettings);
        AK::SoundEngine::GetDefaultPlatformInitSettings(platformInitSettings);
        bool resSoundEngineInit = AK::SoundEngine::Init(&initSettings, &platformInitSettings);
        assert(resSoundEngineInit);

#ifndef AK_OPTIMIZED
        AkCommSettings commSettings{};
        AK::Comm::GetDefaultInitSettings(commSettings);
        assert(static_cast<bool>(AK::Comm::Init(commSettings)));
        AK::SoundEngine::StartProfilerCapture(L"project.prof");
#endif

        SoundBankLoad("Init.bnk");

        AkGameObjectID DEFAULT_LISTENER = GetNewObjectID();
        AK::SoundEngine::RegisterGameObj(DEFAULT_LISTENER, "DefaultListener");
        AK::SoundEngine::SetDefaultListeners(&DEFAULT_LISTENER, 1);
	}


	AudioEngine::~AudioEngine()
	{
        AK::SoundEngine::UnregisterAllGameObj();

#ifndef AK_OPTIMIZED
        AK::SoundEngine::StopOutputCapture();
        AK::Comm::Term();
#endif

        AK::SoundEngine::Term();
        m_pLowLevelIO->Term();

        if (AK::IAkStreamMgr::Get()) 
        {
            AK::IAkStreamMgr::Get()->Destroy();
        }

        AK::MemoryMgr::Term();
	}


	void AudioEngine::Update()
	{
        AK::SoundEngine::RenderAudio();
	}

    void AudioEngine::SoundBankLoad(std::string bank) 
    {
        AkBankID bankID;
        bool resLoadBank = AK::SoundEngine::LoadBank(bank.c_str(), bankID);
        assert(resLoadBank);
    }

    void AudioEngine::SoundBanksLoad(std::vector<std::string>& soundNames)
    {
        for (auto& bankName : soundNames) 
        {
            SoundBankLoad(bankName);
        }
    }

	uint64_t AudioEngine::CreateNewObj() 
    {
        AkGameObjectID id = GetNewObjectID();
        bool resRegisterObj = AK::SoundEngine::RegisterGameObj(id);
        assert(resRegisterObj);

        return static_cast<uint64_t>(id);
	}

	void AudioEngine::DeleteObj(uint64_t objID) 
    {
        bool resUnregisterObj = AK::SoundEngine::UnregisterGameObj(objID);
        assert(resUnregisterObj);
	}

	void AudioEngine::PlayAudioEvent(uint64_t objID, std::string eventName) 
    {
        AkPlayingID playingID = AK::SoundEngine::PostEvent(eventName.c_str(), objID);
        assert(static_cast<bool>(playingID));
	}

    AkGameObjectID AudioEngine::GetNewObjectID() 
    {
        return m_lastObjectID++;
    }
}