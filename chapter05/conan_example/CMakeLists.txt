# Chapter 5 - Example illustrating how to use conan with a conanfile.txt
#
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.23)

project(
    conan_conanfile_example
    VERSION 1.0
    DESCRIPTION
        "AC++ project to demonstrate using a conanfile.txt from within CMake"
    LANGUAGES CXX
)

# Append the current binary dir to CMAKE_PREFIX_PATH so the conan package are found
list(APPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_BINARY_DIR})

# find the just downloaded package
find_package(fmt 10.2.1 REQUIRED)

# Create a target to build an executable
add_executable(conan_conanfile_example)
# set the c++ version required

target_compile_features(
    conan_conanfile_example
    PRIVATE cxx_std_11
)
# Add source files to 'conan_conanfile_example' target
target_sources(
    conan_conanfile_example
    PRIVATE src/main.cpp
)

# link the fmt library to the executable
target_link_libraries(
    conan_conanfile_example
    PRIVATE fmt::fmt
)
