#set(CMAKE_TOOLCHAIN_FILE cmake/ArduinoToolchain.cmake) # Arduino Toolchain
cmake_minimum_required(VERSION 3.6)
project(poc C CXX)

set(CMAKE_CXX_STANDARD 11)

file(GLOB common_SRCS
        "src/ArduinoAbstract/*.cpp")
file(GLOB common_HDRS
        "src/ArduinoAbstract/*.h")

if(ARDUINO_FOUND)
    print_board_list()
    #print_programmer_list()


    generate_arduino_firmware(master_lighter
            HDRS src/master/LighterBrain.h ${common_HDRS}
            SRCS src/master/MasterMain.cpp src/master/LighterBrain.cpp
            PORT /dev/ttyUSB0
            BOARD mega2560)
    generate_arduino_firmware(slave_lighter
            SRCS src/slave/SlaveMain.cpp
            PORT /dev/ttyUSB0
            BOARD uno)
else()
    include(CTest)
    add_subdirectory(googletest/googletest)
    include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})
    #file(GLOB testSRCS
    #        test/*)
    add_executable(runUnitTests
            test/GtestMain.cpp
            test/FakeIt.h
            ${common_HDRS}
            ${common_SRCS}
            test/LighterBrainTests.cpp src/master/LighterBrain.cpp src/master/LighterBrain.h
            )
    target_link_libraries(runUnitTests
            gtest
            ${CMAKE_THREAD_LIBS_INIT})

    enable_testing()
    add_test(runUnitTests runUnitTests)
endif()