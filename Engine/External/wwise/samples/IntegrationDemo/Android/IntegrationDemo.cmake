add_library("IntegrationDemo" SHARED
  "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/AkDefaultIOHookDeferred.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/AkFileHelpers.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common/AkFileLocationBase.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common/AkFilePackage.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common/AkFilePackageLUT.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common/AkGeneratedSoundBanksResolver.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common/AkJobWorkerMgr.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common/AkPlatformProfilerHookStubs.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../Common/Drawing.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../Common/Helpers.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../Common/IntegrationDemo.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../Common/IntegrationDemoPlugins.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../Common/PlatformHooks.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../Common/SoundInputBase.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../Common/SpatialAudioHelpers.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../Common/UniversalInput.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/BaseMenuPage.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/Demo3dAudio.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/Demo3dBus.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoAppLifecycle.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoAutobanks.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoBGM.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoBankLoadingMenu.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoChannels.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoCommandBufferCrowd.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoDialogueMenu.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoDynamicDialogue.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoExternalSources.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoFootstepsManyVariables.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoInteractiveMusic.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoLocalization.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoMIDIMetronome.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoMarkers.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoMotion.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoMusicCallbacks.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoMusicMIDIMenu.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoOptions.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoPositioning.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoPositioningMenu.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoPrepare.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoRTPCCarEngine.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoSpatialAudio.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoSpatialAudioGeometry.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoSpatialAudioMenu.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoSpatialAudioPortalReflect.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoSpatialAudioReflect.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/DemoSpatialAudioReverbZones.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/PartnerPlugins/GME/DemoGMEBaseMenuPage.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/PartnerPlugins/GME/DemoGMEPositioningPage.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/PartnerPlugins/GME/DemoGMERoutePage.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/PartnerPlugins/GME/DemoGMEServerAudioRoutePage.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/PartnerPlugins/GME/DemoGMEVoiceChatPage.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/PartnerPlugins/GME/DemoGMEVoiceMessagePage.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/PartnerPlugins/PartnerPluginsMenu.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../DemoPages/PartnerPlugins/speechEngine/DemoSpeechEngine.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets/GentiumPlusAm-R.ttf"
  "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/FreetypeGraphicRenderer.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem/ButtonControl.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem/Control.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem/LabelControl.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem/Menu.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem/MessagePage.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem/MovableChip.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem/MultiplayerPage.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem/NumericControl.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem/Page.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem/ToggleControl.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../SDL/RenderSDL.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../SDL/SDLInputMgr.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../SDL/SDLWindow.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/AndroidUtils.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/DemoOptionsUtil.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/Platform.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/jni/main.cpp"
)
if(CMAKE_BUILD_TYPE STREQUAL armeabi-v7a-Debug)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Debug/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Debug/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Debug/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "_DEBUG"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Debug/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "CommunicationCentral"
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/MDd>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/MDd>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86-Debug)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Debug/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Debug/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Debug/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "_DEBUG"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Debug/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "CommunicationCentral"
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/MDd>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/MDd>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m32>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m32>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL arm64-v8a-Debug)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Debug/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Debug/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Debug/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "_DEBUG"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Debug/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "CommunicationCentral"
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/MDd>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/MDd>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86_64-Debug)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Debug/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Debug/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Debug/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "_DEBUG"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Debug/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "CommunicationCentral"
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/MDd>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/MDd>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m64>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m64>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL armeabi-v7a-Profile)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Profile/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Profile/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Profile/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "NDEBUG"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Profile/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "CommunicationCentral"
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-ffunction-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fdata-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86-Profile)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Profile/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Profile/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Profile/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "NDEBUG"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Profile/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "CommunicationCentral"
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-ffunction-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fdata-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m32>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m32>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL arm64-v8a-Profile)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Profile/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Profile/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Profile/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "NDEBUG"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Profile/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "CommunicationCentral"
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-ffunction-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fdata-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86_64-Profile)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Profile/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Profile/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Profile/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "NDEBUG"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Profile/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "CommunicationCentral"
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-ffunction-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fdata-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m64>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m64>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL armeabi-v7a-Profile_EnableAsserts)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Profile_EnableAsserts/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Profile_EnableAsserts/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Profile_EnableAsserts/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "NDEBUG"
    "AK_ENABLE_ASSERTS"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Profile_EnableAsserts/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "CommunicationCentral"
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-ffunction-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fdata-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86-Profile_EnableAsserts)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Profile_EnableAsserts/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Profile_EnableAsserts/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Profile_EnableAsserts/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "NDEBUG"
    "AK_ENABLE_ASSERTS"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Profile_EnableAsserts/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "CommunicationCentral"
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-ffunction-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fdata-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m32>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m32>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL arm64-v8a-Profile_EnableAsserts)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Profile_EnableAsserts/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Profile_EnableAsserts/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Profile_EnableAsserts/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "NDEBUG"
    "AK_ENABLE_ASSERTS"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Profile_EnableAsserts/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "CommunicationCentral"
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-ffunction-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fdata-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86_64-Profile_EnableAsserts)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Profile_EnableAsserts/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Profile_EnableAsserts/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Profile_EnableAsserts/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "NDEBUG"
    "AK_ENABLE_ASSERTS"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Profile_EnableAsserts/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "CommunicationCentral"
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-ffunction-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fdata-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m64>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m64>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL armeabi-v7a-Release)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Release/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Release/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Release/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "NDEBUG"
    "AK_OPTIMIZED"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_armeabi-v7a/Release/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-ffunction-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fdata-sections")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86-Release)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Release/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Release/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Release/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "NDEBUG"
    "AK_OPTIMIZED"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86/Release/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-ffunction-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fdata-sections")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m32>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m32>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL arm64-v8a-Release)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Release/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Release/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Release/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "NDEBUG"
    "AK_OPTIMIZED"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_arm64-v8a/Release/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-ffunction-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fdata-sections")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86_64-Release)
  set_target_properties("IntegrationDemo" PROPERTIES
    OUTPUT_NAME "IntegrationDemo"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Release/bin/IntegrationDemo"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Release/bin/IntegrationDemo"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Release/bin/IntegrationDemo"
  )
  target_include_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android/libzip/lib"
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer"
    "${CMAKE_CURRENT_LIST_DIR}/../FreetypeRenderer/Assets"
    "${CMAKE_CURRENT_LIST_DIR}/../MenuSystem"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../SoundEngine/Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../DemoPages"
    "${CMAKE_CURRENT_LIST_DIR}/../WwiseProject/GeneratedSoundBanks"
    "${CMAKE_CURRENT_LIST_DIR}/../../3rdParty/sdl2/include"
    "${CMAKE_CURRENT_LIST_DIR}/../SDL"
  )
  target_compile_definitions("IntegrationDemo" PRIVATE
    "NDEBUG"
    "AK_OPTIMIZED"
    "AK_PLATFORM_SUPPORTS_MOTION"
    "AK_PLATFORM_SUPPORTS_GME"
    "AK_PLATFORM_SUPPORTS_SPEECH_ENGINE"
    "AK_RENDER_SDL"
    "AK_INPUT_SDL"
  )
  target_link_directories("IntegrationDemo" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../Android_x86_64/Release/lib"
  )
  target_link_libraries("IntegrationDemo"
    -Wl,--start-group
    "SDL2"
    "Ak3DAudioBedMixerFX"
    "AkAudioInputSource"
    "AkCompressorFX"
    "AkDelayFX"
    "AkFlangerFX"
    "AkGainFX"
    "AkGuitarDistortionFX"
    "AkHarmonizerFX"
    "AkMatrixReverbFX"
    "AkMeterFX"
    "AkParametricEQFX"
    "AkPeakLimiterFX"
    "AkPitchShifterFX"
    "AkRecorderADMFX"
    "AkRecorderFX"
    "AkRoomVerbFX"
    "AkSidechainFX"
    "AkSilenceSource"
    "AkSineSource"
    "AkStereoDelayFX"
    "AkSynthOneSource"
    "AkTimeStretchFX"
    "AkToneSource"
    "AkTremoloFX"
    "zip"
    "AkMemoryMgr"
    "AkSoundEngine"
    "AkSpatialAudio"
    "AkStreamMgr"
    "AkVorbisDecoder"
    "AkOpusDecoder"
    -Wl,--end-group
    -Wl,--start-group
    "log"
    "OpenSLES"
    "android"
    "EGL"
    "GLESv1_CM"
    "GLESv2"
    "z"
    -Wl,--end-group
  )
  target_compile_options("IntegrationDemo" PRIVATE "-fPIC")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-conversion-null")
  target_compile_options("IntegrationDemo" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("IntegrationDemo" PRIVATE "-fvisibility=hidden")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-rtti")
  target_compile_options("IntegrationDemo" PRIVATE "-fno-exceptions")
  target_compile_options("IntegrationDemo" PRIVATE "-ffunction-sections")
  target_compile_options("IntegrationDemo" PRIVATE "-fdata-sections")
  set_target_properties("IntegrationDemo" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 ")
  if (MSVC)
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/EHsc>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("IntegrationDemo" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m64>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m64>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fexceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("IntegrationDemo" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
