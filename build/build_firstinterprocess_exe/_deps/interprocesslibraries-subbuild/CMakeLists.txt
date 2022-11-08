# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.24.2)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(interprocesslibraries-populate NONE)



include(ExternalProject)
ExternalProject_Add(interprocesslibraries-populate
                     "UPDATE_DISCONNECTED" "False"
                    SOURCE_DIR          "/home/matthewalgo/Projects/VSCode/CppBuildSystem/first_interprocess_exe/../lib_sources"
                    BINARY_DIR          "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/interprocesslibraries-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


