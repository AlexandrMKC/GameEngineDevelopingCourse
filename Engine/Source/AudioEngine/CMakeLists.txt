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
		AudioEngine_EXPORTS
		UNICODE)

target_sources(AudioEngine
	PRIVATE ${PRIVATE_FILES}
	PRIVATE ${PUBLIC_FILES}
)

target_include_directories(AudioEngine
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/public
	PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/private
)

target_link_libraries(AudioEngine
	AudioSystem
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
)