cmake_minimum_required(VERSION 2.8.12.1)

set(CMAKE_CONFIGURATION_TYPES Debug Release)

project(cpp_template)

# set_property(GLOBAL PROPERTY OS_FOLDERS ON)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}")

include("${CMAKE_MODULE_PATH}/cmake/variables.cmake")
include("${CMAKE_MODULE_PATH}/cmake/macros.cmake")
include("${CMAKE_MODULE_PATH}/cmake/project.cmake")

PRINT_CONFIG()
