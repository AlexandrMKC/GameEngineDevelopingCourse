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
        AKRESULT resMemoryMrg = AK::MemoryMgr::Init(&memSettings);
        assert(resMemoryMrg == AK_Success);

        AkStreamMgrSettings stmSettings{};
        AK::StreamMgr::GetDefaultSettings(stmSettings);
        AK::IAkStreamMgr* streamMrg = AK::StreamMgr::Create(stmSettings);
        assert(streamMrg != nullptr);

        AkDeviceSettings deviceSettings{};
        AK::StreamMgr::GetDefaultDeviceSettings(deviceSettings);
        AKRESULT resLowLevelIO = m_pLowLevelIO->Init(deviceSettings);
        assert(resLowLevelIO == AK_Success);

        auto pathToSounds = Core::g_FileSystem->GetFilePath("Sounds/");
        AKRESULT resSetPath = m_pLowLevelIO->SetBasePath(pathToSounds.c_str());
        assert(resSetPath == AK_Success);

        AkInitSettings initSettings{};
        AkPlatformInitSettings platformInitSettings{};
        AK::SoundEngine::GetDefaultInitSettings(initSettings);
        AK::SoundEngine::GetDefaultPlatformInitSettings(platformInitSettings);
        AKRESULT resSoundEngineInit = AK::SoundEngine::Init(&initSettings, &platformInitSettings);
        assert(resSoundEngineInit == AK_Success);

#ifndef AK_OPTIMIZED
        AkCommSettings commSettings{};
        AK::Comm::GetDefaultInitSettings(commSettings);
        assert(AK::Comm::Init(commSettings) == AK_Success);
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
        AKRESULT resLoadBank = AK::SoundEngine::LoadBank(bank.c_str(), bankID);
        assert(resLoadBank == AK_Success);
    }

    void AudioEngine::SoundBanksLoad(std::vector<std::string>& soundNames)
    {
        for (const std::string& bankName : soundNames)
        {
            SoundBankLoad(bankName);
        }
    }

	uint64_t AudioEngine::CreateNewObj() 
    {
        AkGameObjectID id = GetNewObjectID();
        AKRESULT resRegisterObj = AK::SoundEngine::RegisterGameObj(id);
        assert(resRegisterObj == AK_Success);

        return static_cast<uint64_t>(id);
	}

	void AudioEngine::DeleteObj(uint64_t objID) 
    {
        AKRESULT resUnregisterObj = AK::SoundEngine::UnregisterGameObj(objID);
        assert(resUnregisterObj == AK_Success);
	}

	void AudioEngine::PlayAudioEvent(uint64_t objID, std::string eventName) 
    {
        AkPlayingID playingID = AK::SoundEngine::PostEvent(eventName.c_str(), objID);
        assert(playingID != 0);
	}

    AkGameObjectID AudioEngine::GetNewObjectID() 
    {
        return m_lastObjectID++;
    }
}