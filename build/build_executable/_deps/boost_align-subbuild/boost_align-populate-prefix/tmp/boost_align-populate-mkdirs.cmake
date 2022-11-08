# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_align-src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_align-build"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_align-subbuild/boost_align-populate-prefix"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_align-subbuild/boost_align-populate-prefix/tmp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_align-subbuild/boost_align-populate-prefix/src/boost_align-populate-stamp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_align-subbuild/boost_align-populate-prefix/src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_align-subbuild/boost_align-populate-prefix/src/boost_align-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_align-subbuild/boost_align-populate-prefix/src/boost_align-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_align-subbuild/boost_align-populate-prefix/src/boost_align-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
