# Append platform specific sources to a list of sources.
macro(PROJECT_APPEND_PLATFORM_SOURCES name_of_list)
  if("${CMAKE_SYSTEM_NAME}" STREQUAL "Darwin" AND ${name_of_list}_MACOSX)
    list(APPEND ${name_of_list} ${${name_of_list}_MACOSX})
  endif()
  if("${CMAKE_SYSTEM_NAME}" STREQUAL "Linux" AND ${name_of_list}_LINUX)
    list(APPEND ${name_of_list} ${${name_of_list}_LINUX})
  endif()
  if("${CMAKE_SYSTEM_NAME}" STREQUAL "Windows" AND ${name_of_list}_WINDOWS)
    list(APPEND ${name_of_list} ${${name_of_list}_WINDOWS})
  endif()
endmacro()

set(PROJECT_TARGET cpp_template)

set(PROJECT_SRCS
  main.cpp
  )

set(PROJECT_SRCS_LINUX
  #list of files
  )

set(PROJECT_SRCS_MACOSX
  #list of files
  )

set(PROJECT_SRCS_WINDOWS
  #list of files
  )

PROJECT_APPEND_PLATFORM_SOURCES(PROJECT_SRCS)
source_group(src FILES ${PROJECT_SRCS})

set(PROJECT_INCS
  main.h
  )

set(PROJECT_INCS_LINUX
  #list of files
  )

set(PROJECT_INCS_MACOSX
  #list of files
  )

set(PROJECT_INCS_WINDOWS
  #list of files
  )

PROJECT_APPEND_PLATFORM_SOURCES(PROJECT_INCS)  
source_group(include FILES ${PROJECT_INCS})

add_executable(${PROJECT_TARGET}
  ${PROJECT_SRCS}
  ${PROJECT_INCS}
  )
SET_LIBRARY_TARGET_PROPERTIES(${PROJECT_TARGET})
