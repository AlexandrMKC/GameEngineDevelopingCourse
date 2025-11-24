set(PLATFORM_CONFIG "x64_vc170")

set(WWISE_SDK_PATH "${CMAKE_LIBRARY_PATH}/wwise/SDK")

set(WWISE_INCLUDE_PATH "${WWISE_SDK_PATH}/include")

set(WWISE_DEBUG_DLL_PATH "${WWISE_SDK_PATH}/${PLATFORM_CONFIG}/Debug/bin")
set(WWISE_DEBUG_LIB_PATH "${WWISE_SDK_PATH}/${PLATFORM_CONFIG}/Debug/lib")

set(WWISE_RELEASE_DLL_PATH "${WWISE_SDK_PATH}/${PLATFORM_CONFIG}/Release/bin")
set(WWISE_RELEASE_LIB_PATH "${WWISE_SDK_PATH}/${PLATFORM_CONFIG}/Release/lib")

set(WWISE_CORE_CODEC_COMPONENTS
        "AkVorbisDecoder"
        "AkOpusDecoder")
set(WWISE_CORE_COMPONENTS
        "AkSoundEngine"
        "AkMemoryMgr"
        "AkStreamMgr"
        "AkSpatialAudio"
        ${WWISE_CORE_CODEC_COMPONENTS}
)
set(WWISE_CORE_DEBUG_COMPONENTS
        ${WWISE_CORE_COMPONENTS}
        "CommunicationCentral")


set(WWISE_CORE_LIBS)

foreach(COMPONENT ${WWISE_CORE_DEBUG_COMPONENTS})
    list(APPEND WWISE_CORE_LIBS "${WWISE_DEBUG_LIB_PATH}/${COMPONENT}.lib")
endforeach()
file(GLOB PLUGIN_DLLS "${WWISE_DEBUG_DLL_PATH}/*.dll")

if (CMAKE_BUILD_TYPE STREQUAL "Debug")
    foreach(COMPONENT ${WWISE_CORE_DEBUG_COMPONENTS})
        list(APPEND WWISE_CORE_LIBS "${WWISE_DEBUG_LIB_PATH}/${COMPONENT}.lib")
    endforeach()
    file(GLOB PLUGIN_DLLS "${WWISE_DEBUG_DLL_PATH}/*.dll")
elseif (CMAKE_BUILD_TYPE STREQUAL "Release")
    foreach(COMPONENT ${WWISE_CORE_COMPONENTS})
        list(APPEND WWISE_CORE_LIBS "${WWISE_RELEASE_LIB_PATH}/${COMPONENT}.lib")
    endforeach()
    file(GLOB PLUGIN_DLLS "${WWISE_RELEASE_DLL_PATH}/*.dll")
endif()

set(WWISE_STRM_MNG_PATH "${WWISE_SDK_PATH}/samples/SoundEngine")
set(WWISE_STRM_MNG_PLATFORM_PATH "${WWISE_STRM_MNG_PATH}/Win32")

file(GLOB WWISE_STRM_MNG_PLATFORM_SOURCES
        "${WWISE_STRM_MNG_PLATFORM_PATH}*.h"
        "${WWISE_STRM_MNG_PLATFORM_PATH}/*.cpp")

set(WWISE_STRM_MNG_INCLUDE_PATH "${WWISE_STRM_MNG_PATH}/Common")

file(GLOB WWISE_STRM_MNG_SOURCES
        "${WWISE_STRM_MNG_INCLUDE_PATH}/*.h"
        "${WWISE_STRM_MNG_INCLUDE_PATH}/*.cpp")

list(REMOVE_ITEM WWISE_STRM_MNG_SOURCES
        "${WWISE_STRM_MNG_INCLUDE_PATH}/AkPlatformProfilerHookStubs.cpp")

file(GLOB
	PRIVATE_FILES
	private/*.cpp
	private/*.h
)
file(GLOB
	PUBLIC_FILES
	public/*.h
)

include(GenerateExportHeader)
add_library(WwiseAudioSystem SHARED)
generate_export_header(WwiseAudioSystem EXPORT_FILE_NAME export.h EXPORT_MACRO_NAME WWISE_AUDIO_SYSTEM_API)

set_target_properties(WwiseAudioSystem PROPERTIES FOLDER "Engine")

target_compile_definitions(WwiseAudioSystem
	PRIVATE
		WwiseAudioSystem_EXPORTS
		UNICODE)

target_sources(WwiseAudioSystem
	PRIVATE ${PRIVATE_FILES}
	PRIVATE ${PUBLIC_FILES}
	PRIVATE ${WWISE_STRM_MNG_SOURCES}
	PRIVATE ${WWISE_STRM_MNG_PLATFORM_SOURCES}

)

target_include_directories(WwiseAudioSystem
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/public
    PUBLIC ${WWISE_INCLUDE_PATH}
    PUBLIC ${WWISE_STRM_MNG_PLATFORM_PATH}
	PUBLIC ${WWISE_STRM_MNG_INCLUDE_PATH}
	PUBLIC ${WWISE_GENERATE_SOUND_BANKS_PATH}
	PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/private
	PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../IAudioSystem/public
)

target_link_libraries(WwiseAudioSystem ${WWISE_CORE_LIBS} Core ws2_32 dinput8 Winmm dsound dxguid xinput)

target_precompile_headers(WwiseAudioSystem
	PRIVATE
		<unordered_map>
		<vector>
		<string>
		<cassert>
		<format>
		<functional>
		<thread>
		<mutex>
		<condition_variable>
		<tuple>
		<utility>
		<cstdint>
		<limits>
		<filesystem>
		<variant>
)