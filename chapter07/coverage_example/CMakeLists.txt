# CMakeLists file for the Chapter 7. Example to show how to create a custom build type for a coverage build
#
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.23)

project(
    "ch7_coverage_example"
    VERSION 1.0
    DESCRIPTION "A simple C++ project to demonstrate generating coverage information"
    LANGUAGES CXX)
#include CTest module for defining tests later
include(CTest)


# Add an example library and executable to illustrate the coverage report
add_library(ch7_coverage_example STATIC)
target_include_directories(ch7_coverage_example PUBLIC include)
target_compile_features(ch7_coverage_example PUBLIC cxx_std_11)
target_sources(ch7_coverage_example PRIVATE src/coverage_example/coverage_example.cpp)


add_executable(ch7_coverage_example_test src/coverage_test.cpp)
target_link_libraries(ch7_coverage_example_test ch7_coverage_example)

target_compile_features(ch7_coverage_example_test PRIVATE cxx_std_17)
add_test(NAME code_coverage_test COMMAND ch7_coverage_example_test)