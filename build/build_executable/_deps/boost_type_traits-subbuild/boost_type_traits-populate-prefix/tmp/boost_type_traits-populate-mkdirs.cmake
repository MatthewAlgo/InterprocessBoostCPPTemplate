# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_type_traits-src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_type_traits-build"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_type_traits-subbuild/boost_type_traits-populate-prefix"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_type_traits-subbuild/boost_type_traits-populate-prefix/tmp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_type_traits-subbuild/boost_type_traits-populate-prefix/src/boost_type_traits-populate-stamp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_type_traits-subbuild/boost_type_traits-populate-prefix/src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_type_traits-subbuild/boost_type_traits-populate-prefix/src/boost_type_traits-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_type_traits-subbuild/boost_type_traits-populate-prefix/src/boost_type_traits-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_executable/_deps/boost_type_traits-subbuild/boost_type_traits-populate-prefix/src/boost_type_traits-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
