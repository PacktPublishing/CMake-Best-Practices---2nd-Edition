# Chapter 5 - Example to illustrate how to create a simple executable that links to a library found in the default search path
#
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.23)

project(
    ch5_find_package_example
    VERSION 1.0
    DESCRIPTION
        "A C++ project to demonstrate searching third-party dependencies"
    LANGUAGES CXX
)

# enable debugging for finding the package (For illustrative purposes)
# set(CMAKE_FIND_DEBUG_MODE TRUE )


# Search the package OpenSSL and its component SSL. 
# To have the configuration fail if not found, add the REQUIRED keyword like this:
# find_package(OpenSSL COMPONENTS SSL REQUIRED)
find_package(OpenSSL COMPONENTS SSL)

# disable debugging again 
# set(CMAKE_FIND_DEBUG_MODE FALSE )

if(NOT OPENSSL)
    message(STATUS "OpenSSL package not found; Not building find-package example.")
    return()
endif()

# Create a target to build an executable
add_executable(ch5_find_package_example)
# set the c++ version required

target_compile_features(
    ch5_find_package_example
    PRIVATE cxx_std_11
)
# Add source files to 'ch5_find_package_example' target
target_sources(
    ch5_find_package_example
    PRIVATE src/main.cpp
)

# link the openssl library to the executable
target_link_libraries(
    ch5_find_package_example
    PRIVATE OpenSSL::SSL
)
