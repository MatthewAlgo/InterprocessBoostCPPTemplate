# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_container-src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_container-build"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_container-subbuild/boost_container-populate-prefix"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_container-subbuild/boost_container-populate-prefix/tmp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_container-subbuild/boost_container-populate-prefix/src/boost_container-populate-stamp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_container-subbuild/boost_container-populate-prefix/src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_container-subbuild/boost_container-populate-prefix/src/boost_container-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_container-subbuild/boost_container-populate-prefix/src/boost_container-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_container-subbuild/boost_container-populate-prefix/src/boost_container-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
