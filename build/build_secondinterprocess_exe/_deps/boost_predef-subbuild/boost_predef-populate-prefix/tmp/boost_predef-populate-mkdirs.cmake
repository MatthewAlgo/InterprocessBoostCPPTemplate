# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe/_deps/boost_predef-src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe/_deps/boost_predef-build"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe/_deps/boost_predef-subbuild/boost_predef-populate-prefix"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe/_deps/boost_predef-subbuild/boost_predef-populate-prefix/tmp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe/_deps/boost_predef-subbuild/boost_predef-populate-prefix/src/boost_predef-populate-stamp"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe/_deps/boost_predef-subbuild/boost_predef-populate-prefix/src"
  "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe/_deps/boost_predef-subbuild/boost_predef-populate-prefix/src/boost_predef-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe/_deps/boost_predef-subbuild/boost_predef-populate-prefix/src/boost_predef-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe/_deps/boost_predef-subbuild/boost_predef-populate-prefix/src/boost_predef-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
