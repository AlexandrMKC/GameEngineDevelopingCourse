add_library("AkAudioInput" SHARED
  "${CMAKE_CURRENT_LIST_DIR}/../InitPlugins.cpp"
)
if(CMAKE_BUILD_TYPE STREQUAL armeabi-v7a-Debug)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Debug/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Debug/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Debug/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "_DEBUG"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Debug/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/MDd>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/MDd>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86-Debug)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Debug/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Debug/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Debug/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "_DEBUG"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Debug/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/MDd>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/MDd>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL arm64-v8a-Debug)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Debug/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Debug/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Debug/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "_DEBUG"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Debug/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/MDd>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/MDd>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86_64-Debug)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Debug/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Debug/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Debug/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "_DEBUG"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Debug/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/MDd>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/MDd>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL armeabi-v7a-Profile)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Profile/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Profile/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Profile/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "NDEBUG"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Profile/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-ffunction-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fdata-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86-Profile)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Profile/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Profile/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Profile/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "NDEBUG"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Profile/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-ffunction-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fdata-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL arm64-v8a-Profile)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Profile/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Profile/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Profile/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "NDEBUG"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Profile/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-ffunction-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fdata-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86_64-Profile)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Profile/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Profile/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Profile/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "NDEBUG"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Profile/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-ffunction-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fdata-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL armeabi-v7a-Profile_EnableAsserts)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Profile_EnableAsserts/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Profile_EnableAsserts/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Profile_EnableAsserts/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "NDEBUG"
    "AK_ENABLE_ASSERTS"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Profile_EnableAsserts/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-ffunction-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fdata-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86-Profile_EnableAsserts)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Profile_EnableAsserts/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Profile_EnableAsserts/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Profile_EnableAsserts/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "NDEBUG"
    "AK_ENABLE_ASSERTS"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Profile_EnableAsserts/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-ffunction-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fdata-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL arm64-v8a-Profile_EnableAsserts)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Profile_EnableAsserts/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Profile_EnableAsserts/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Profile_EnableAsserts/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "NDEBUG"
    "AK_ENABLE_ASSERTS"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Profile_EnableAsserts/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-ffunction-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fdata-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86_64-Profile_EnableAsserts)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Profile_EnableAsserts/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Profile_EnableAsserts/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Profile_EnableAsserts/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "NDEBUG"
    "AK_ENABLE_ASSERTS"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Profile_EnableAsserts/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-ffunction-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fdata-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fno-omit-frame-pointer")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL armeabi-v7a-Release)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Release/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Release/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Release/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "NDEBUG"
    "AK_OPTIMIZED"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_armeabi-v7a/Release/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-ffunction-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fdata-sections")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86-Release)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Release/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Release/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Release/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "NDEBUG"
    "AK_OPTIMIZED"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86/Release/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-ffunction-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fdata-sections")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL arm64-v8a-Release)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Release/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Release/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Release/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "NDEBUG"
    "AK_OPTIMIZED"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_arm64-v8a/Release/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-ffunction-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fdata-sections")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-fPIC>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86_64-Release)
  set_target_properties("AkAudioInput" PROPERTIES
    OUTPUT_NAME "AkAudioInput"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Release/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Release/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Release/bin"
  )
  target_include_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../include"
  )
  target_compile_definitions("AkAudioInput" PRIVATE
    "NDEBUG"
    "AK_OPTIMIZED"
  )
  target_link_directories("AkAudioInput" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../../../../Android_x86_64/Release/lib"
  )
  target_link_libraries("AkAudioInput"
    "AkAudioInputSource"
  )
  target_compile_options("AkAudioInput" PRIVATE "-fPIC")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkAudioInput" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkAudioInput" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkAudioInput" PRIVATE "-fno-rtti")
  target_compile_options("AkAudioInput" PRIVATE "-fno-exceptions")
  target_compile_options("AkAudioInput" PRIVATE "-ffunction-sections")
  target_compile_options("AkAudioInput" PRIVATE "-fdata-sections")
  set_target_properties("AkAudioInput" PROPERTIES LINK_FLAGS "-Wl,--as-needed,-z,max-page-size=16384 -Wl,--export-dynamic ")
  if (MSVC)
    target_compile_options("AkAudioInput" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MD>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MD>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkAudioInput" PRIVATE
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
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkAudioInput" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
