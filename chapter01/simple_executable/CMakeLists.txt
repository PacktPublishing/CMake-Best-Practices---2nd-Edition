
# CMakeLists file for the Chapter 1 example illustrating how to create a simple executable
# 
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.23)

# Define a CMake project
project(
  ch1_simple_executable
  VERSION 1.0
  DESCRIPTION "A simple C++ project to demonstrate basic CMake usage"
  LANGUAGES CXX)

# Add an executable target named `chapter1`
add_executable(ch1_simple_executable)
# Add sources to the target `chapter1`
target_sources(ch1_simple_executable PRIVATE src/main.cpp)

