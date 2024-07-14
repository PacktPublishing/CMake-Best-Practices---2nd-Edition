cmake_minimum_required(VERSION 3.25)

# Project name and version
project(
    ch11_hello_world_apple
    VERSION 1.0
    DESCRIPTION
        "A simple C++ project to demonstrate an apple ui"
    LANGUAGES CXX OBJCXX
)

# set some global XCode properties 
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "Apple Development" CACHE STRING "")
set(CMAKE_XCODE_ATTRIBUTE_DEVELOPMENT_TEAM "CMake Best Practice Authors" CACHE STRING "")

# Add the executable
add_executable(ch11_hello_world_apple src/main.mm)

# Link the Cocoa framework
target_link_libraries(ch11_hello_world_apple "-framework Cocoa")
target_compile_features(ch11_hello_world_apple PRIVATE cxx_std_17)

#set target properties for macOS
set_target_properties(ch11_hello_world_apple PROPERTIES
    XCODE_ATTRIBUTE_CXX_LANGUAGE_STANDARD "c++17"    
    XCODE_ATTRIBUTE_ENABLE_HARDENED_RUNTIME[variant=Release] "YES"
    XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "Apple Development"

)