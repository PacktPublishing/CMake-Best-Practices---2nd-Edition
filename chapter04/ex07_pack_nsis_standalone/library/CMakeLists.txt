# CMakeLists file for the Chapter 4 Example nr. 6: 
# CPack example
#
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.23)

project(
  ch04_ex07_library
  VERSION 1.0
  DESCRIPTION "Chapter 4 Example 06, CPack example"
  LANGUAGES CXX)

add_library(ch04_ex07_library STATIC src/lib.cpp)

# Set the required C++ standard for the target
target_compile_features(ch04_ex07_library PRIVATE cxx_std_17)

target_include_directories(ch04_ex07_library PUBLIC include)

# this target ist not installed deliberately to illustrate how to use RUNTIME_DEPENDENCIES in CPack