cmake_minimum_required(VERSION 3.20)
project(drone)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
add_compile_options(-std=c++17 -ggdb -Wall -Wextra -pedantic)

find_package(OpenCV REQUIRED)

add_executable(webcam main.cpp features.cpp opticalflow.cpp videocapture.cpp)
target_include_directories(webcam PUBLIC ${OpenCV_INCLUDE_DIRS})
target_link_libraries(webcam PUBLIC ${OpenCV_LIBS})


add_executable(calibrate camera_calibration.cpp)
target_include_directories(calibrate PUBLIC ${OpenCV_INCLUDE_DIRS})
target_link_libraries(calibrate PUBLIC ${OpenCV_LIBS})