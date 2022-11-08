# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_integer-src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_integer-build"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_integer-subbuild/boost_integer-populate-prefix"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_integer-subbuild/boost_integer-populate-prefix/tmp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_integer-subbuild/boost_integer-populate-prefix/src/boost_integer-populate-stamp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_integer-subbuild/boost_integer-populate-prefix/src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_integer-subbuild/boost_integer-populate-prefix/src/boost_integer-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_integer-subbuild/boost_integer-populate-prefix/src/boost_integer-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_integer-subbuild/boost_integer-populate-prefix/src/boost_integer-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
