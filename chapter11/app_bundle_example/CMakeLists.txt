cmake_minimum_required(VERSION 3.25)

# Project name and version
project(
    ch11_app_bundle_example
    VERSION 1.0
    DESCRIPTION
        "A simple C++ project to demonstrate an apple ui"
    LANGUAGES CXX OBJCXX
)

# Add the executable
add_executable(ch11_app_bundle_example MACOSX_BUNDLE src/main.mm)

# Link the Cocoa framework
target_link_libraries(ch11_app_bundle_example "-framework Cocoa")
target_compile_features(ch11_app_bundle_example PRIVATE cxx_std_17)

