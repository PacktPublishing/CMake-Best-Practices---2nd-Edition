cmake_minimum_required(VERSION 3.25)

# Project name and version
project(
    ch16_app_bundle_example
    VERSION 1.0
    DESCRIPTION
        "A simple C++ project to demonstrate an apple ui"
    LANGUAGES CXX
)

# Add the executable
add_executable(ch16_app_bundle_example MACOSX_BUNDLE src/main.mm)

# Link the Cocoa framework
target_link_libraries(ch16_app_bundle_example "-framework Cocoa")
target_compile_features(ch16_app_bundle_example PRIVATE cxx_std_17)

