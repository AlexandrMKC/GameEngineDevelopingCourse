add_library("AkToneSource" STATIC
  "${CMAKE_CURRENT_LIST_DIR}/../AkLpFilter.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../AkToneGen.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../AkToneGenDSP.cpp"
  "${CMAKE_CURRENT_LIST_DIR}/../AkToneGenParams.cpp"
)
if(CMAKE_BUILD_TYPE STREQUAL armeabi-v7a-Debug)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_armeabi-v7a/Debug/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_armeabi-v7a/Debug/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_armeabi-v7a/Debug/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "_DEBUG"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-fno-omit-frame-pointer")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MDd>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MDd>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86-Debug)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86/Debug/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86/Debug/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86/Debug/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "_DEBUG"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-fno-omit-frame-pointer")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MDd>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MDd>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m32>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m32>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL arm64-v8a-Debug)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_arm64-v8a/Debug/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_arm64-v8a/Debug/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_arm64-v8a/Debug/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "_DEBUG"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-fno-omit-frame-pointer")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MDd>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MDd>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86_64-Debug)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86_64/Debug/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86_64/Debug/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86_64/Debug/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "_DEBUG"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-fno-omit-frame-pointer")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:/WX>
      $<$<COMPILE_LANGUAGE:C>:/O2>
      $<$<COMPILE_LANGUAGE:C>:/MDd>
      $<$<COMPILE_LANGUAGE:C>:/Z7>
      $<$<COMPILE_LANGUAGE:C>:/std:c11>
      $<$<COMPILE_LANGUAGE:CXX>:/WX>
      $<$<COMPILE_LANGUAGE:CXX>:/O2>
      $<$<COMPILE_LANGUAGE:CXX>:/MDd>
      $<$<COMPILE_LANGUAGE:CXX>:/Z7>
      $<$<COMPILE_LANGUAGE:CXX>:/std:c++17>
      $<$<COMPILE_LANGUAGE:CXX>:/GR->
    )
  else()
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m64>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m64>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL armeabi-v7a-Profile)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_armeabi-v7a/Profile/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_armeabi-v7a/Profile/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_armeabi-v7a/Profile/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "NDEBUG"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-ffunction-sections")
  target_compile_options("AkToneSource" PRIVATE "-fdata-sections")
  target_compile_options("AkToneSource" PRIVATE "-fno-omit-frame-pointer")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
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
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86-Profile)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86/Profile/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86/Profile/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86/Profile/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "NDEBUG"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-ffunction-sections")
  target_compile_options("AkToneSource" PRIVATE "-fdata-sections")
  target_compile_options("AkToneSource" PRIVATE "-fno-omit-frame-pointer")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
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
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m32>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m32>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL arm64-v8a-Profile)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_arm64-v8a/Profile/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_arm64-v8a/Profile/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_arm64-v8a/Profile/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "NDEBUG"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-ffunction-sections")
  target_compile_options("AkToneSource" PRIVATE "-fdata-sections")
  target_compile_options("AkToneSource" PRIVATE "-fno-omit-frame-pointer")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
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
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86_64-Profile)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86_64/Profile/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86_64/Profile/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86_64/Profile/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "NDEBUG"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-ffunction-sections")
  target_compile_options("AkToneSource" PRIVATE "-fdata-sections")
  target_compile_options("AkToneSource" PRIVATE "-fno-omit-frame-pointer")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
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
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m64>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m64>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL armeabi-v7a-Profile_EnableAsserts)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_armeabi-v7a/Profile_EnableAsserts/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_armeabi-v7a/Profile_EnableAsserts/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_armeabi-v7a/Profile_EnableAsserts/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "NDEBUG"
    "AK_ENABLE_ASSERTS"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-ffunction-sections")
  target_compile_options("AkToneSource" PRIVATE "-fdata-sections")
  target_compile_options("AkToneSource" PRIVATE "-fno-omit-frame-pointer")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
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
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86-Profile_EnableAsserts)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86/Profile_EnableAsserts/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86/Profile_EnableAsserts/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86/Profile_EnableAsserts/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "NDEBUG"
    "AK_ENABLE_ASSERTS"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-ffunction-sections")
  target_compile_options("AkToneSource" PRIVATE "-fdata-sections")
  target_compile_options("AkToneSource" PRIVATE "-fno-omit-frame-pointer")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
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
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m32>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m32>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL arm64-v8a-Profile_EnableAsserts)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_arm64-v8a/Profile_EnableAsserts/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_arm64-v8a/Profile_EnableAsserts/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_arm64-v8a/Profile_EnableAsserts/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "NDEBUG"
    "AK_ENABLE_ASSERTS"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-ffunction-sections")
  target_compile_options("AkToneSource" PRIVATE "-fdata-sections")
  target_compile_options("AkToneSource" PRIVATE "-fno-omit-frame-pointer")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
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
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86_64-Profile_EnableAsserts)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86_64/Profile_EnableAsserts/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86_64/Profile_EnableAsserts/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86_64/Profile_EnableAsserts/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "NDEBUG"
    "AK_ENABLE_ASSERTS"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-ffunction-sections")
  target_compile_options("AkToneSource" PRIVATE "-fdata-sections")
  target_compile_options("AkToneSource" PRIVATE "-fno-omit-frame-pointer")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
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
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m64>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-g>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m64>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-g>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL armeabi-v7a-Release)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_armeabi-v7a/Release/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_armeabi-v7a/Release/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_armeabi-v7a/Release/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "NDEBUG"
    "AK_OPTIMIZED"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-ffunction-sections")
  target_compile_options("AkToneSource" PRIVATE "-fdata-sections")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
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
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86-Release)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86/Release/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86/Release/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86/Release/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "NDEBUG"
    "AK_OPTIMIZED"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-ffunction-sections")
  target_compile_options("AkToneSource" PRIVATE "-fdata-sections")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
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
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m32>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m32>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL arm64-v8a-Release)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_arm64-v8a/Release/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_arm64-v8a/Release/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_arm64-v8a/Release/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "NDEBUG"
    "AK_OPTIMIZED"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-ffunction-sections")
  target_compile_options("AkToneSource" PRIVATE "-fdata-sections")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
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
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()

if(CMAKE_BUILD_TYPE STREQUAL x86_64-Release)
  set_target_properties("AkToneSource" PROPERTIES
    OUTPUT_NAME "AkToneSource"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86_64/Release/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86_64/Release/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/../../../../../../Android_x86_64/Release/lib"
  )
  target_include_directories("AkToneSource" PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/."
    "${CMAKE_CURRENT_LIST_DIR}/../../../../../../include"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common/Android"
    "${CMAKE_CURRENT_LIST_DIR}/../../Common"
    "${CMAKE_CURRENT_LIST_DIR}/../../../Common"
  )
  target_compile_definitions("AkToneSource" PRIVATE
    "NDEBUG"
    "AK_OPTIMIZED"
  )
  target_compile_options("AkToneSource" PRIVATE "-ffast-math")
  target_compile_options("AkToneSource" PRIVATE "-fPIC")
  target_compile_options("AkToneSource" PRIVATE "-Wno-conversion-null")
  target_compile_options("AkToneSource" PRIVATE "-Wno-deprecated-declarations")
  target_compile_options("AkToneSource" PRIVATE "-fvisibility=hidden")
  target_compile_options("AkToneSource" PRIVATE "-fno-rtti")
  target_compile_options("AkToneSource" PRIVATE "-fno-exceptions")
  target_compile_options("AkToneSource" PRIVATE "-ffunction-sections")
  target_compile_options("AkToneSource" PRIVATE "-fdata-sections")
  if (MSVC)
    target_compile_options("AkToneSource" PRIVATE
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
    target_compile_options("AkToneSource" PRIVATE
      $<$<COMPILE_LANGUAGE:C>:-m64>
      $<$<COMPILE_LANGUAGE:C>:-Werror>
      $<$<COMPILE_LANGUAGE:C>:-O3>
      $<$<COMPILE_LANGUAGE:C>:-std=c11>
      $<$<COMPILE_LANGUAGE:CXX>:-m64>
      $<$<COMPILE_LANGUAGE:CXX>:-Werror>
      $<$<COMPILE_LANGUAGE:CXX>:-O3>
      $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
      $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    )
  endif()
  set_target_properties("AkToneSource" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
