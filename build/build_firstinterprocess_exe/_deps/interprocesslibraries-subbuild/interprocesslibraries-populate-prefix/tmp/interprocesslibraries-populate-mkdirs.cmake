# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/first_interprocess_exe/../lib_sources"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/interprocesslibraries-build"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/interprocesslibraries-subbuild/interprocesslibraries-populate-prefix"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/interprocesslibraries-subbuild/interprocesslibraries-populate-prefix/tmp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/interprocesslibraries-subbuild/interprocesslibraries-populate-prefix/src/interprocesslibraries-populate-stamp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/interprocesslibraries-subbuild/interprocesslibraries-populate-prefix/src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/interprocesslibraries-subbuild/interprocesslibraries-populate-prefix/src/interprocesslibraries-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/interprocesslibraries-subbuild/interprocesslibraries-populate-prefix/src/interprocesslibraries-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/interprocesslibraries-subbuild/interprocesslibraries-populate-prefix/src/interprocesslibraries-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
