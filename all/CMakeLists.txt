# this script adds all subprojects to a single build to allow IDEs understand the full project
# structure.

cmake_minimum_required(VERSION 3.14...3.22)

project(BuildAll LANGUAGES CXX)

include(../cmake/tools.cmake)

# needed to generate test target
enable_testing()

add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../first_interprocess_exe ${CMAKE_BINARY_DIR}/first_interprocess_exe)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../second_interprocess_exe ${CMAKE_BINARY_DIR}/second_interprocess_exe)

add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../test ${CMAKE_BINARY_DIR}/test)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../documentation ${CMAKE_BINARY_DIR}/documentation)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../lib_sources ${CMAKE_BINARY_DIR}/lib_sources)
