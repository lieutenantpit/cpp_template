set(PROJECT_TARGET cpp_template)

set(PROJECT_SOURCES
  src/main.cpp
  )

set(PROJECT_SOURCES_LINUX
  #list of files
  )

set(PROJECT_SOURCES_MACOSX
  #list of files
  )

set(PROJECT_SOURCES_WINDOWS
  #list of files
  )

APPEND_PLATFORM_SOURCES(PROJECT_SOURCES)
source_group(src FILES ${PROJECT_SOURCES})

set(PROJECT_INCLUDES
  src/main.h
  )

set(PROJECT_INCLUDES_LINUX
  #list of files
  )

set(PROJECT_INCLUDES_MACOSX
  #list of files
  )

set(PROJECT_INCLUDES_WINDOWS
  #list of files
  )

APPEND_PLATFORM_SOURCES(PROJECT_INCLUDES)  
source_group(include FILES ${PROJECT_INCLUDES})

set(PROJECT_RESOURCES
  #list of files
  )

set(PROJECT_RESOURCES_LINUX
  #list of files
  )

set(PROJECT_RESOURCES_MACOSX
  #list of files
  )

set(PROJECT_RESOURCES_WINDOWS
  #list of files
  )

APPEND_PLATFORM_SOURCES(PROJECT_RESOURCES)  
source_group(resources FILES ${PROJECT_RESOURCES})

add_executable(${PROJECT_TARGET}
  ${PROJECT_SOURCES}
  ${PROJECT_INCLUDES}
  ${PROJECT_RESOURCES}
  )

SET_EXECUTABLE_TARGET_PROPERTIES(${PROJECT_TARGET})
