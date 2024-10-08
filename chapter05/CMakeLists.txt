# Top-level CMakeLists file for the Chapter 5 example content.
#
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.23)

project(
    "Chapter_5"
    VERSION 1.0
    DESCRIPTION
        "A collection of sample C++ projects to demonstrate using external dependencies"
    LANGUAGES CXX
)

add_subdirectory(find_package_example)
add_subdirectory(find_module)
add_subdirectory(fetch_content_example)
add_subdirectory(external_project)

# the subproject conan_example is supposed to be run as a standalone project
# as it illustrates using conan as a dependency provider which requires inclusion
# of conan.cmake at the root of the project

# Look for the vcpkg executable on the host system, if vcpkg is not found
# exclude all vcpkg-related examples from the project
find_program(VCPKG_EXECUTABLE vcpkg)

# if vcpkg not found or toolchain file does not match vcpkg.cmake exclude the vcpkg example 
if(NOT VCPKG_EXECUTABLE OR NOT CMAKE_TOOLCHAIN_FILE MATCHES "vcpkg.cmake$")
  message(STATUS "vcpkg not found or vcpkg toolchain not set. Will not build vcpkg example")
else()
    add_subdirectory(vcpkg_example)
endif()