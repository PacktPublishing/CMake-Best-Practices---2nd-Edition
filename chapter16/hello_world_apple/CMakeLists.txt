cmake_minimum_required(VERSION 3.25)

# Project name and version
project(
    ch16_hello_world_apple
    VERSION 1.0
    DESCRIPTION
        "A simple C++ project to demonstrate an apple ui"
    LANGUAGES CXX
)

# Add the executable
add_executable(ch16_hello_world_apple src/main.cpp)

# Link the Cocoa framework
target_link_libraries(ch16_hello_world_apple "-framework Cocoa")
