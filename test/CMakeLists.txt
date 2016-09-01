#include_directories (
#  ${PROJECT_SOURCE_DIR}/test/gtest/include
#  ${PROJECT_SOURCE_DIR}/test/gtest
#  ${PROJECT_SOURCE_DIR}/test
#)

configure_file (test_config.h.in ${PROJECT_BINARY_DIR}/test/test_config.h)

# Build gtest
#add_library(gtest STATIC gtest/src/gtest-all.cc)
#add_library(gtest_main STATIC gtest/src/gtest_main.cc)
#target_link_libraries(gtest_main gtest)
#set(GTEST_LIBRARY "${PROJECT_BINARY_DIR}/test/libgtest.a")
#set(GTEST_MAIN_LIBRARY "${PROJECT_BINARY_DIR}/test/libgtest_main.a")

#execute_process(COMMAND cmake -E remove_directory ${CMAKE_BINARY_DIR}/test_results)
#execute_process(COMMAND cmake -E make_directory ${CMAKE_BINARY_DIR}/test_results)
#include_directories(${GTEST_INCLUDE_DIRS})

find_package(Threads REQUIRED)

# Enable ExternalProject CMake module
include(ExternalProject)

# Download and install GoogleTest
ExternalProject_Add(
    gtest
    URL https://github.com/google/googletest/archive/master.zip
    PREFIX ${CMAKE_CURRENT_BINARY_DIR}/gtest
    # Disable install step
    INSTALL_COMMAND ""
)

# Get GTest source and binary directories from CMake project
ExternalProject_Get_Property(gtest source_dir binary_dir)

# Create a libgtest target to be used as a dependency by test programs
add_library(libgtest IMPORTED STATIC GLOBAL)
add_dependencies(libgtest gtest)

# Set libgtest properties
set_target_properties(libgtest PROPERTIES
    "IMPORTED_LOCATION" "${binary_dir}/googlemock/gtest/libgtest.a"
    "IMPORTED_LINK_INTERFACE_LIBRARIES" "${CMAKE_THREAD_LIBS_INIT}"
)

# Create a libgmock target to be used as a dependency by test programs
add_library(libgmock IMPORTED STATIC GLOBAL)
add_dependencies(libgmock gtest)

# Set libgmock properties
set_target_properties(libgmock PROPERTIES
    "IMPORTED_LOCATION" "${binary_dir}/googlemock/libgmock.a"
    "IMPORTED_LINK_INTERFACE_LIBRARIES" "${CMAKE_THREAD_LIBS_INIT}"
)

# I couldn't make it work with INTERFACE_INCLUDE_DIRECTORIES
include_directories("${source_dir}/googletest/include"
                    "${source_dir}/googlemock/include")


add_subdirectory(resourcelocator)
