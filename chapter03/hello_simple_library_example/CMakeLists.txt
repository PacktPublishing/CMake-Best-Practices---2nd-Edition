# Chapter3-  Illustriating how to create a static library
#
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.17)

project(
    ch3_hello
    VERSION 1.0.0
    DESCRIPTION
        "A simple C++ project to demonstrate creating executables and libraries in CMake"
    LANGUAGES CXX
)

# add the library target
add_library(ch3_hello)
add_library(ch3_hello::ch3_hello ALIAS ch3_hello)

target_sources(ch3_hello PRIVATE src/hello.cpp)
target_compile_features(ch3_hello PUBLIC cxx_std_17)

# set the include directories
target_include_directories(
    ch3_hello
    PRIVATE src/ch3_hello
    PUBLIC include
)
