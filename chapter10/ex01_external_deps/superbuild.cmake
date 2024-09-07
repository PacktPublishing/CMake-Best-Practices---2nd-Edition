# Super-build code for Chapter 10, example 01.
#
# SPDX-License-Identifier: MIT

# We will utilize the FetchContent module for satisfying the google benchmark
# and google test dependencies.
include(FetchContent)

message(
    STATUS
        "Chapter 10, example 01 superbuild enabled. Will try to satisfy dependencies for the example."
)

# Declare google benchmark dependency details. We will explicitly require 1.6.1
# version this time.
fetchcontent_declare(
    benchmark
    GIT_REPOSITORY https://github.com/google/benchmark.git
    GIT_TAG v1.6.1
)

# Declare google test dependency details. We will explicitly require 1.10.0
# version this time.
fetchcontent_declare(
    GTest
    GIT_REPOSITORY https://github.com/google/googletest.git
    GIT_TAG release-1.11.0
)

# Since Gtest 1.14 has the minimum required C++ standard set to 14 this is
# enforced here

# Declaring dependencies via FetchContent_Declare does not make them
# "available", meaning they will not be downloaded nor be installed until we
# call FetchContent_MakeAvailable() or FetchContent_Populate().

fetchcontent_makeavailable(GTest benchmark)
# To make target names compatible with find_package(...), so we can switch
# between superbuild and find_package_(...) easily.
add_library(
    GTest::Main
    ALIAS
    gtest_main
)
# Google benchmark already defines benchmark::benchmark target, so it is not
# necessary to define an alias for it.
