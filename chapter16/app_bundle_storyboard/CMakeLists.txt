cmake_minimum_required(VERSION 3.25)

# Project name and version
project(
    ch16_app_bundle_storyboard
    VERSION 1.0
    DESCRIPTION
        "A simple C++ project to demonstrate an apple ui"
    LANGUAGES CXX OBJCXX
)

set(resource_files
    ${CMAKE_CURRENT_SOURCE_DIR}/storyboard/main.storyboard
)

# Add the executable
add_executable(ch16_app_bundle_storyboard MACOSX_BUNDLE src/main.mm)
target_sources(ch16_app_bundle_storyboard PRIVATE ${resource_files})

set_source_files_properties(${resource_files} PROPERTIES MACOSX_PACKAGE_LOCATION Resources)
target_link_libraries(ch16_app_bundle_storyboard "-framework UIKit")
