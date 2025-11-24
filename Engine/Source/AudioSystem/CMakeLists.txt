cmake_minimum_required(VERSION 3.19)

add_subdirectory(IAudioSystem)

if (WINDOWS)
	add_subdirectory(WwiseAudioSystem)
endif()