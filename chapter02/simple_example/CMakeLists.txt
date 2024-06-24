
# CMakeLists file for the Chapter 2 example illustrating how to create a simple executable
# 
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.23)

# Define a CMake project
project(
  ch2_simple_example
  VERSION 1.0
  DESCRIPTION "A simple C++ project to demonstrate basic CMake usage"
  LANGUAGES CXX)

# Generate compile_commands.json for better IDE integration
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Add an executable target named `chapter2_simple_example`
add_executable(chapter2_simple_example)
# Add sources to the target `chapter2_simple_example`
target_sources(chapter2_simple_example PRIVATE src/main.cpp)

