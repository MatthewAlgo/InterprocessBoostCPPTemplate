# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_container_hash-src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_container_hash-build"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_container_hash-subbuild/boost_container_hash-populate-prefix"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_container_hash-subbuild/boost_container_hash-populate-prefix/tmp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_container_hash-subbuild/boost_container_hash-populate-prefix/src/boost_container_hash-populate-stamp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_container_hash-subbuild/boost_container_hash-populate-prefix/src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_container_hash-subbuild/boost_container_hash-populate-prefix/src/boost_container_hash-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_container_hash-subbuild/boost_container_hash-populate-prefix/src/boost_container_hash-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_container_hash-subbuild/boost_container_hash-populate-prefix/src/boost_container_hash-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
