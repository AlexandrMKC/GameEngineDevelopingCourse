set(WWISE_SDK_PATH "${CMAKE_LIBRARY_PATH}/wwise")

set(WWISE_INCLUDE_PATH "${WWISE_SDK_PATH}/include")

set(WWISE_DEBUG_DLL_PATH "${WWISE_SDK_PATH}/Debug/bin")
set(WWISE_DEBUG_LIB_PATH "${WWISE_SDK_PATH}/Debug/lib")

set(WWISE_RELEASE_DLL_PATH "${WWISE_SDK_PATH}/Release/bin")
set(WWISE_RELEASE_LIB_PATH "${WWISE_SDK_PATH}/Release/lib")

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

set(WWISE_CORE_RELEASE_COMPONENTS
        ${WWISE_CORE_COMPONENTS}
        )


set(WWISE_CORE_DEBUG_LIBS)
set(WWISE_CORE_RELEASE_LIBS)

foreach(COMPONENT ${WWISE_CORE_DEBUG_COMPONENTS})
    list(APPEND WWISE_CORE_DEBUG_LIBS "${WWISE_DEBUG_LIB_PATH}/${COMPONENT}.lib")
endforeach()
file(GLOB PLUGIN_DEBUG_DLLS "${WWISE_DEBUG_DLL_PATH}/*.dll")

file(GLOB PLUGIN_RELEASE_LIBS_ "${WWISE_RELEASE_LIB_PATH}/*.lib")
foreach(COMPONENT ${WWISE_CORE_RELEASE_COMPONENTS})
    list(APPEND WWISE_CORE_RELEASE_LIBS "${WWISE_RELEASE_LIB_PATH}/${COMPONENT}.lib")
endforeach()
file(GLOB PLUGIN_RELEASE_DLLS "${WWISE_RELEASE_DLL_PATH}/*.dll")

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
add_library(AudioEngine SHARED)
generate_export_header(AudioEngine EXPORT_FILE_NAME export.h EXPORT_MACRO_NAME AUDIO_ENGINE_API)

set_target_properties(AudioEngine PROPERTIES FOLDER "Engine")

target_compile_definitions(AudioEngine
	PRIVATE
		$<$<OR:$<CONFIG:Release>,$<CONFIG:RelWithDebInfo>,$<CONFIG:MinSizeRel>>:AK_OPTIMIZED>
		AudioEngine_EXPORTS
		UNICODE)

target_sources(AudioEngine
	PRIVATE ${PRIVATE_FILES}
	PRIVATE ${PUBLIC_FILES}
	PRIVATE ${WWISE_STRM_MNG_SOURCES}
	PRIVATE ${WWISE_STRM_MNG_PLATFORM_SOURCES}
)

target_include_directories(AudioEngine
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/public
	PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/private
	PUBLIC ${WWISE_INCLUDE_PATH}
	PUBLIC ${WWISE_STRM_MNG_PLATFORM_PATH}
	PUBLIC ${WWISE_STRM_MNG_INCLUDE_PATH}
	PUBLIC ${WWISE_GENERATE_SOUND_BANKS_PATH}
)

target_link_libraries(AudioEngine
	$<$<CONFIG:Debug>:${WWISE_CORE_DEBUG_LIBS}> 
	$<$<OR:$<CONFIG:Release>,$<CONFIG:RelWithDebInfo>,$<CONFIG:MinSizeRel>>:${PLUGIN_RELEASE_LIBS_}>
	Core
	ws2_32 
	dinput8 
	Winmm 
	dsound 
	dxguid 
	xinput
)

target_precompile_headers(AudioEngine
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
		<thread>
		<limits>
		<chrono>
		<filesystem>
		<memory>
)