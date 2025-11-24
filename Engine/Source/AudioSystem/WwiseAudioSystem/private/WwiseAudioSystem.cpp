#include <WwiseAudioSystem.h>

#include <AK/Tools/Common/AkPlatformFuncs.h>
#include <AK/SoundEngine/Common/AkSoundEngine.h>
#include <AK/SpatialAudio/Common/AkSpatialAudio.h>

#include <FileSystem.h>
#include <Debug/Console.h>

namespace GameEngine::Audio::WwiseAudioSystem {

	void WwiseAudioSystem::Init() {

        m_pLowLevelIO = new CAkFilePackageLowLevelIODeferred();

        AkMemSettings memSettings{};
        AK::MemoryMgr::GetDefaultSettings(memSettings);
        if (!AK::MemoryMgr::Init(&memSettings))
            assert(!"Wwise: Could not create the memory manager.");
        

        AkStreamMgrSettings stmSettings{};
        AK::StreamMgr::GetDefaultSettings(stmSettings);
        if (!AK::StreamMgr::Create(stmSettings))
            assert(!"Wwise: Could not create the streaming manager.");

        AkDeviceSettings deviceSettings{};
        AK::StreamMgr::GetDefaultDeviceSettings(deviceSettings);
        if (!m_pLowLevelIO->Init(deviceSettings))
            assert(!"Wwise: Could not create the streaming device and Low-Level I/O system.");

        auto pathToSounds = Core::g_FileSystem->GetFilePath("Sounds/");
        if (!m_pLowLevelIO->SetBasePath(pathToSounds.c_str()))
            assert(!"Wwise: Could not set base path for sound banks.");

        AkInitSettings initSettings{};
        AkPlatformInitSettings platformInitSettings{};
        AK::SoundEngine::GetDefaultInitSettings(initSettings);
        AK::SoundEngine::GetDefaultPlatformInitSettings(platformInitSettings);
        if (!AK::SoundEngine::Init(&initSettings, &platformInitSettings))
            assert(!"Wwise: Could not initialize the Sound Engine.");
       
#ifndef AK_OPTIMIZED
        AkCommSettings commSettings{};
        AK::Comm::GetDefaultInitSettings(commSettings);
        if (!AK::Comm::Init(commSettings))
            assert(!"Wwise: Could not initialize communication.");

        AK::SoundEngine::StartProfilerCapture(L"project.prof");
#endif

        if (!SoundBankLoad("Init.bnk"))
            assert(!"Wwise: Failed to load initialization bank.");

        AkGameObjectID DEFAULT_LISTENER = GetNewObjectID();
        AK::SoundEngine::RegisterGameObj(DEFAULT_LISTENER, "DefaultListener");
        AK::SoundEngine::SetDefaultListeners(&DEFAULT_LISTENER, 1);
        
        if (!AK::SoundEngine::IsInitialized())
            assert(!"Wwise: Sound engine is not initialized.");
	}

    void WwiseAudioSystem::Update() {
        AK::SoundEngine::RenderAudio();
    }

    void WwiseAudioSystem::Terminate() {

        AK::SoundEngine::UnregisterAllGameObj();

#ifndef AK_OPTIMIZED
        AK::SoundEngine::StopOutputCapture();

        AK::Comm::Term();
#endif

        AK::SoundEngine::Term();

        m_pLowLevelIO->Term();

        if (AK::IAkStreamMgr::Get())
            AK::IAkStreamMgr::Get()->Destroy();

        AK::MemoryMgr::Term();
    }

    void WwiseAudioSystem::SoundLoad(std::string soundName) {
        soundName += ".bnk";
        if (!SoundBankLoad(soundName))
            assert(!"Wwise: Failed to load sound bank.");
    }

    uint64_t WwiseAudioSystem::CreateNewObj()
    {
        AkGameObjectID id = GetNewObjectID();
        if (!AK::SoundEngine::RegisterGameObj(id))
            assert(!"Wwise: Failed to register game object.");
        
        return static_cast<uint64_t>(id);
    }

    void WwiseAudioSystem::DeleteObj(uint64_t objID)
    {
        if (!AK::SoundEngine::UnregisterGameObj(objID))
            assert(!"Wwise: Failed to unregister game object.");
    }

    void WwiseAudioSystem::PostEvent(uint64_t objID, std::string eventName)
    {
        AkPlayingID playingID = AK::SoundEngine::PostEvent(eventName.c_str(), objID);
        if (playingID == AK_INVALID_PLAYING_ID) {
            assert(!"Wwise: Failed to post audio event.");
        }
    }

    bool WwiseAudioSystem::SoundBankLoad(std::string bank)
    {
        AkBankID bankID;
        return AK::SoundEngine::LoadBank(bank.c_str(), bankID);
    }

    AkGameObjectID WwiseAudioSystem::GetNewObjectID()
    {
        return m_lastObjectID++;
    }
}