# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_preprocessor-src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_preprocessor-build"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_preprocessor-subbuild/boost_preprocessor-populate-prefix"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_preprocessor-subbuild/boost_preprocessor-populate-prefix/tmp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_preprocessor-subbuild/boost_preprocessor-populate-prefix/src/boost_preprocessor-populate-stamp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_preprocessor-subbuild/boost_preprocessor-populate-prefix/src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_preprocessor-subbuild/boost_preprocessor-populate-prefix/src/boost_preprocessor-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_preprocessor-subbuild/boost_preprocessor-populate-prefix/src/boost_preprocessor-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_firstinterprocess_exe/_deps/boost_preprocessor-subbuild/boost_preprocessor-populate-prefix/src/boost_preprocessor-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
