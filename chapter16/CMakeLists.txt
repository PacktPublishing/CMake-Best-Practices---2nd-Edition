# Top-level CMakeLists file for the Chapter 1 example content.
#
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.23)

project(
    chapter_16
    VERSION 1.0
    DESCRIPTION
        "Examples for chapter 16 of the CMake Best Practices book"
    LANGUAGES CXX
)

# The examples in this chapter are apple specific
if(APPLE)
    add_subdirectory(hello_world_apple)
    add_subdirectory(app_bundle_example)
    add_subdirectory(app_bundle_example_custom_plist)
endif()