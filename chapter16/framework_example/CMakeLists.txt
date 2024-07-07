#
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.25)

project(
    ch16_framework_example
    VERSION 1.0.0
    DESCRIPTION
        "A simple C++ project to demonstrate creating executables and libraries in CMake"
    LANGUAGES CXX
)

# add the library target
add_library(ch16_framework_example SHARED)

# set properties for the target. VERSION set the library version to the project
# version * SOVERSION set the compatibility  version for the library to the
# major number of the version
set_target_properties(
    ch16_framework_example
    PROPERTIES FRAMEWORK TRUE
               FRAMEWORK_VERSION 1
               PUBLIC_HEADER include/hello.hpp
               PRIVATE_HEADER src/internal.hpp
               MACOSX_FRAMEWORK_INFO_PLIST "${CMAKE_CURRENT_SOURCE_DIR}/Info.plist.in"
)

# add sources to the library target
target_sources(
    ch16_framework_example
    PRIVATE src/hello.cpp src/internal.cpp
)

# set the include directories
target_include_directories(
    ch16_framework_example
    PRIVATE src/ch16_framework_example
    PUBLIC include
)

# if using limited visibility, set CXX_VISIBILILTY_PRESET to "hidden"
include(GenerateExportHeader)
set_property(
    TARGET ch16_framework_example
    PROPERTY CXX_VISIBILITY_PRESET "hidden"
)
# Hide inlined functions by default, reducing the size of the library
set_property(
    TARGET ch16_framework_example
    PROPERTY VISIBILITY_INLINES_HIDDEN TRUE
)
# this command generates a header file in the CMAKE_CURRENT_BINARY_DIR which
# sets the visibility attributes according to the compiler settings
generate_export_header(
    ch16_framework_example
    EXPORT_FILE_NAME
    export/hello/export_hello.hpp
)
# Add CMAKE_CURRENT_BINARY_DIR to the include path so the generated header can
# be found
target_include_directories(
    ch16_framework_example
    PUBLIC "${CMAKE_CURRENT_BINARY_DIR}/export"
)

# An alternative but not recomended way export the symbols is to use
# set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS TRUE) Which exports all dll symbols by
# default
