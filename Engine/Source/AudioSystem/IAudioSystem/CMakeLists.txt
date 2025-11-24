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
add_library(AudioSystem SHARED)
generate_export_header(AudioSystem EXPORT_FILE_NAME export.h EXPORT_MACRO_NAME AUDIO_SYSTEM_API)

set_target_properties(AudioSystem PROPERTIES FOLDER "Engine")

target_compile_definitions(AudioSystem
	PRIVATE
		AudioSystem_EXPORTS
		UNICODE)

# Set Sources
target_sources(AudioSystem
	PRIVATE ${PRIVATE_FILES}
	PRIVATE ${PUBLIC_FILES}
)

# include dir
target_include_directories(AudioSystem 
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/public
	PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/private
)

target_link_libraries(AudioSystem PRIVATE WwiseAudioSystem)

target_precompile_headers(AudioSystem
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