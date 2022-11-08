cmake_minimum_required(VERSION 3.14...3.22)

project(
  InterProcessLibraries
  VERSION 1.0
  LANGUAGES CXX
)

# --- Import tools ----

include(../cmake/tools.cmake)

# ---- Dependencies ----

include(../cmake/CPM.cmake)

file(GLOB sources CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/source/*.cpp ${CMAKE_CURRENT_SOURCE_DIR}/imgui/*.cpp ${CMAKE_CURRENT_SOURCE_DIR}/imgui-sfml/*.cpp)
file(GLOB_RECURSE headers CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/../include/*.h" "${CMAKE_CURRENT_SOURCE_DIR}/../imgui/*.h" "${CMAKE_CURRENT_SOURCE_DIR}/../imgui-sfml/*.h")

CPMAddPackage(
  NAME sfml
  GITHUB_REPOSITORY SFML/SFML
  GIT_TAG 2.5.x
)

set_target_properties(sfml-system PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO)
set_target_properties(sfml-network PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO)
set_target_properties(sfml-graphics PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO)
set_target_properties(sfml-window PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO)
set_target_properties(sfml-audio PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO)
find_package(OpenGL REQUIRED)


add_library(${PROJECT_NAME} ${sources})

set_target_properties(${PROJECT_NAME} PROPERTIES CXX_STANDARD 17 OUTPUT_NAME "InterProcessLibraries")

# Include custom library dependencies here
if (WIN32)
find_package(SFML REQUIRED COMPONENTS graphics window system audio network)
target_link_libraries(${PROJECT_NAME} PRIVATE sfml-system sfml-window sfml-graphics sfml-audio sfml-network opengl32
  winmm 
)
endif (WIN32)

if (UNIX AND NOT APPLE)
target_link_libraries(${PROJECT_NAME} PRIVATE X11 sfml-system sfml-window sfml-graphics sfml-audio sfml-network)
endif (UNIX AND NOT APPLE)

if (APPLE)
target_link_libraries(${PROJECT_NAME} PRIVATE sfml-system sfml-window sfml-graphics sfml-audio sfml-network)
endif (APPLE)

target_include_directories(
  ${PROJECT_NAME} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/../include>
                         $<INSTALL_INTERFACE:include/${PROJECT_NAME}-${PROJECT_VERSION}>
)
