cmake_minimum_required(VERSION 3.14...3.22)

project(FirstInterProcessExecutable LANGUAGES CXX)

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
# Also add asio
CPMAddPackage(
    NAME boost_asio
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/asio"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_iterator
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/iterator"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_lexical_cast
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/lexical_cast"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

CPMAddPackage(
    NAME boost_system
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/system"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost bind
CPMAddPackage(
    NAME boost_bind
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/bind"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost chrono
CPMAddPackage(
    NAME boost_chrono
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/chrono"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost io
CPMAddPackage(
    NAME boost_io
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/io"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost coroutine
CPMAddPackage(
    NAME boost_coroutine
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/coroutine"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost variant2
CPMAddPackage(
    NAME boost_variant2
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/variant2"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost mpl
CPMAddPackage(
    NAME boost_mpl
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/mpl"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost context
CPMAddPackage(
    NAME boost_context
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/context"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost ratio
CPMAddPackage(
    NAME boost_ratio
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/ratio"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost date_time
CPMAddPackage(
    NAME boost_date_time
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/date_time"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost rational
CPMAddPackage(
    NAME boost_rational
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/rational"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost typeof
CPMAddPackage(
    NAME boost_typeof
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/typeof"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost function
CPMAddPackage(
    NAME boost_function
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/function"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost numeric_conversion
CPMAddPackage(
    NAME boost_numeric_conversion
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/numeric_conversion"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost exception
CPMAddPackage(
    NAME boost_exception
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/exception"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost pool
CPMAddPackage(
    NAME boost_pool
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/pool"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost algorithm
CPMAddPackage(
    NAME boost_algorithm
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/algorithm"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)

# Boost concept_check
CPMAddPackage(
    NAME boost_concept_check
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/concept_check"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost conversion
CPMAddPackage(
    NAME boost_conversion
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/conversion"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost type index
CPMAddPackage(
    NAME boost_type_index
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/type_index"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost range
CPMAddPackage(
    NAME boost_range
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/range"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost regex
CPMAddPackage(
    NAME boost_regex
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/regex"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost function types
CPMAddPackage(
    NAME boost_function_types
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/function_types"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost tokenizer
CPMAddPackage(
    NAME boost_tokenizer
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/tokenizer"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost optional
CPMAddPackage(
    NAME boost_optional
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/optional"
    GIT_TAG "boost-1.80.0"
    OPTIONS
)
# Boost fusion
CPMAddPackage(
    NAME boost_fusion
    VERSION 1.80.0
    GITHUB_REPOSITORY "boostorg/fusion"
    GIT_TAG "boost-1.80.0"
    OPTIONS
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
#     Boost::asio
#     Boost::iterator
#     Boost::lexical_cast
#     Boost::system

set_target_properties(${PROJECT_NAME} PROPERTIES CXX_STANDARD 17 OUTPUT_NAME "FirstInterprocess")

# target_link_libraries(${PROJECT_NAME} InterProcessLibraries Boost::interprocess rt pthread)
target_link_libraries(${PROJECT_NAME} Boost::interprocess Boost::asio Boost::bind Boost::chrono)

target_include_directories(
  ${PROJECT_NAME} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/../include>
                         $<INSTALL_INTERFACE:include/${PROJECT_NAME}-${PROJECT_VERSION}>
)
