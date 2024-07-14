#
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.25)

project(
    ch11_framework_example
    VERSION 1.0.0
    DESCRIPTION
        "A simple C++ project to demonstrate creating executables and libraries in CMake"
    LANGUAGES CXX
)

# add the library target
add_library(ch11_framework_example SHARED)

# set properties for the target. VERSION set the library version to the project
# version * SOVERSION set the compatibility  version for the library to the
# major number of the version
set_target_properties(
    ch11_framework_example
    PROPERTIES FRAMEWORK TRUE
               FRAMEWORK_VERSION 1
               PUBLIC_HEADER include/hello.hpp
               PRIVATE_HEADER src/internal.hpp
)
target_compile_features(ch11_framework_example PRIVATE cxx_std_17)

# add sources to the library target
target_sources(
    ch11_framework_example
    PRIVATE src/hello.cpp src/internal.cpp
)

# set the include directories
target_include_directories(
    ch11_framework_example
    PRIVATE src/ch11_framework_example
    PUBLIC include
)
