cmake_minimum_required(VERSION 2.8.12.1)

set(CMAKE_CONFIGURATION_TYPES Debug Release)

project(cpp_template)

set_property(GLOBAL PROPERTY OS_FOLDERS ON)

set(PROJECT_ROOT "${CMAKE_CURRENT_SOURCE_DIR}")
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${PROJECT_ROOT}/cmake")

include("${CMAKE_MODULE_PATH}/variables.cmake")
include("${CMAKE_MODULE_PATH}/macros.cmake")
include("${CMAKE_MODULE_PATH}/project.cmake")

PRINT_CONFIG()
