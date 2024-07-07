cmake_minimum_required(VERSION 3.25)

# Project name and version
project(
    ch16_app_bundle_example_custom_plist
    VERSION 1.0
    DESCRIPTION
        "A simple C++ project to demonstrate an apple ui"
    LANGUAGES CXX
)

# Add the executable
add_executable(ch16_app_bundle_example_custom_plist MACOSX_BUNDLE src/main.mm)
set_target_properties(ch16_app_bundle_example_custom_plist PROPERTIES
    MACOSX_BUNDLE_INFO_PLIST "${CMAKE_CURRENT_SOURCE_DIR}/Info.plist.in"
)

# Link the Cocoa framework
target_link_libraries(ch16_app_bundle_example_custom_plist "-framework Cocoa")


