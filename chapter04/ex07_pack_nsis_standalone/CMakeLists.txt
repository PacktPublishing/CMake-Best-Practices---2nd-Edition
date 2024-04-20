# CMakeLists file for the Chapter 4 Example nr. 05: 
# Example CMake consumer for Config-file package
#
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.23)

project(
  ch04_ex07_pack_nsis
  VERSION 1.0
  DESCRIPTION "Chapter 4 Example 06, Packaging with CPack"
  LANGUAGES CXX)

if(NOT PROJECT_IS_TOP_LEVEL)
  message(FATAL_ERROR "The chapter-4, ex07_pack_nsis project is intended to be a standalone, top-level project. Do not include this directory.")
endif()
if(NOT WIN32)
#  message(FATAL_ERROR "The chapter-4, ex07_pack_nsis project is intended to be built on Windows platform.")
endif()

add_subdirectory(executable)
# the library is built but does not contain any install rules
add_subdirectory(library)

#including the InstallRequiredSystemLibraries will cause CMake to search for compiler-provided system runtime libraries and copy them from the system to the package.
include(InstallRequiredSystemLibraries)

# This install commands will install all dependendent libraries for ch04_ex07_executable
# the PRE_EXCLUDE_REGEXES and POST_EXCLUDE_REGEXES are used to exclude system DLLs that are not needed
install(TARGETS ch04_ex07_executable
        RUNTIME_DEPENDENCIES
        PRE_EXCLUDE_REGEXES "api-ms-.*" "ext-ms-.*"
        POST_EXCLUDE_REGEXES ".*system32/.*\\.dll"
        )

# We will not explicitly specify project name and version here and 
# let CPack to get project name and version from the project()
set(CPACK_PACKAGE_VENDOR "CBP Authors")
# Enable NSIS installers
set(CPACK_GENERATOR "NSIS")
# Use all available cores when parallelism is supported
set(CPACK_THREADS 0) 

# Enable packaging support for the project
include(CPack)