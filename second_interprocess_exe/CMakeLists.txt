cmake_minimum_required(VERSION 3.14...3.22)

project(SecondInterProcessExecutable LANGUAGES CXX)

# --- Import tools ----

include(../cmake/tools.cmake)

# ---- Dependencies ----

include(../cmake/CPM.cmake)


# ---- Create standalone executable ----

# Adds the custom library to CPM
CPMAddPackage(NAME InterProcessLibraries SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR}/../lib_sources)

file(GLOB sources CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/source/*.cpp)

# Add the boost interprocess library CPM
CPMAddPackage(
    NAME boost_interprocess
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/interprocess"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

# Add dependecies for boost interprocess
CPMAddPackage(
    NAME boost_config
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/config"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_core
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/core"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_integer
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/integer"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_move
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/move"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_static_assert
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/static_assert"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_throw_exception
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/throw_exception"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_type_traits
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/type_traits"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_utility
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/utility"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_assert
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/assert"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_predef
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/predef"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_preprocessor
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/preprocessor"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_smart_ptr
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/smart_ptr"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_align
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/align"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_array
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/array"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_container
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/container"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_instrusive
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/intrusive"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_unordered
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/unordered"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_winapi
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/winapi"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_container_hash
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/container_hash"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_mp11
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/mp11"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_tuple
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/tuple"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_detail
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/detail"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
  NAME sfml
  GITHUB_REPOSITORY SFML/SFML
  GIT_TAG 2.5.x
)
set(SFML_STATIC_LIBRARIES TRUE) # To use static libraries inside the project
set_target_properties(sfml-system PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO)
set_target_properties(sfml-network PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO)
set_target_properties(sfml-graphics PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO)
set_target_properties(sfml-window PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO)
set_target_properties(sfml-audio PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO)
find_package(OpenGL REQUIRED)

# Add the library SRombauts/SQLiteCpp using CPM
CPMAddPackage(
    NAME SQLiteCpp
    GITHUB_REPOSITORY SRombauts/SQLiteCpp
    GIT_TAG 3.2.0
    OPTIONS
        "SQLITECPP_RUN_CPPLINT OFF"
        "SQLITECPP_RUN_CPPLINT OFF"
        "SQLITECPP_INTERNAL_SQLITE OFF"
        "SQLITECPP_USE_LEGACY_STRUCT_INIT OFF"
        "SQLITE_ENABLE_COLUMN_METADATA OFF"
        "SQLITE_ENABLE_FTS3 OFF"
        "SQLITE_ENABLE_FTS3_PARENTHESIS OFF"
        "SQLITE_ENABLE_FTS4 OFF"
        "SQLITE_ENABLE_FTS5 OFF"
        "SQLITE_ENABLE_JSON1 OFF"
        "SQLITE_ENABLE_RTREE OFF"
        "SQLITE_ENABLE_STAT4 OFF"
        "SQLITE_ENABLE_UPDATE_DELETE_LIMIT OFF"
        "SQLITE_SOUNDEX OFF"
        "SQLITE_USE_LEGACY_STRUCT OFF"
        "SQLITECPP_BUILD_EXAMPLES OFF"
        "SQLITECPP_BUILD_TESTS OFF"
        "SQLITECPP_BUILD_SHARED OFF"
        "SQLITECPP_BUILD_STATIC ON"
)

add_executable(${PROJECT_NAME} ${sources})
#     Boost::assert -
#     Boost::config -
#     Boost::container --
#     Boost::core -
#     Boost::integer -
#     Boost::intrusive --
#     Boost::move -
#     Boost::static_assert -
#     Boost::type_traits -
#     Boost::unordered
#     Boost::winapi

set_target_properties(${PROJECT_NAME} PROPERTIES CXX_STANDARD 17 OUTPUT_NAME "SecondInterprocess")

# target_link_libraries(${PROJECT_NAME} InterProcessLibraries)
# Include custom library dependencies here
if (WIN32)
find_package(SFML REQUIRED COMPONENTS graphics window system audio network)
target_link_libraries(${PROJECT_NAME} PRIVATE InterProcessLibraries sfml-system sfml-window sfml-graphics sfml-audio sfml-network opengl32
  winmm Boost::interprocess rt pthread SQLiteCpp
  sqlite3
  dl
)
endif (WIN32)

if (UNIX AND NOT APPLE)
target_link_libraries(${PROJECT_NAME} PRIVATE InterProcessLibraries X11 sfml-system sfml-window sfml-graphics sfml-audio sfml-network Boost::interprocess rt pthread SQLiteCpp
    sqlite3
    dl
)
endif (UNIX AND NOT APPLE)

if (APPLE)
target_link_libraries(${PROJECT_NAME} PRIVATE InterProcessLibraries sfml-system sfml-window sfml-graphics sfml-audio sfml-network Boost::interprocess rt pthread SQLiteCpp
    sqlite3
    dl
)
endif (APPLE)


target_include_directories(
  ${PROJECT_NAME} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/../include>
                         $<INSTALL_INTERFACE:include/${PROJECT_NAME}-${PROJECT_VERSION}>
)
