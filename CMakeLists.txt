cmake_minimum_required(VERSION 3.15)

project(ChessEngine VERSION 0.1.0 LANGUAGES CXX)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

add_subdirectory(src)

option(ENABLE_TESTING "Build with tests" OFF)
if(ENABLE_TESTING)
    enable_testing()
    add_subdirectory(test)
endif()
