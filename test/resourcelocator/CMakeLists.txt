file(GLOB SRCS *.cpp)

include_directories(
	${PROJECT_BINARY_DIR}/test
    ${resourcelocator_INCLUDE_DIRS}
    ${GTEST_INCLUDE_DIRS}
)
link_directories(
	${resourcelocator_LIBRARY_DIRS}
)

ADD_EXECUTABLE(testresourcelocator ${SRCS})

TARGET_LINK_LIBRARIES(testresourcelocator
    ${resourcelocator_LIBRARIES}
    libgtest
    libgmock
)

add_test(NAME testresourcelocator
         COMMAND testresourcelocator)