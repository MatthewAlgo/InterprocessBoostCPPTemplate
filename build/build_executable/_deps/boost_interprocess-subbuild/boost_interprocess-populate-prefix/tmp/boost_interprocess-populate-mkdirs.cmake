# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_interprocess-src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_interprocess-build"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_interprocess-subbuild/boost_interprocess-populate-prefix"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_interprocess-subbuild/boost_interprocess-populate-prefix/tmp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_interprocess-subbuild/boost_interprocess-populate-prefix/src/boost_interprocess-populate-stamp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_interprocess-subbuild/boost_interprocess-populate-prefix/src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_interprocess-subbuild/boost_interprocess-populate-prefix/src/boost_interprocess-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_interprocess-subbuild/boost_interprocess-populate-prefix/src/boost_interprocess-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_interprocess-subbuild/boost_interprocess-populate-prefix/src/boost_interprocess-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()