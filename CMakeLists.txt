cmake_minimum_required(VERSION 3.17)
project(MatrixMultiplication)

set(CMAKE_CXX_STANDARD 20)

include(FetchContent)
FetchContent_Declare(
        googletest
        URL https://github.com/google/googletest/archive/955c7f837efad184ec63e771c42542d37545eaef.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

enable_testing()

add_executable(
        Matrix_Test
        Matrix_Test.cpp
        Matrix.h)
target_link_libraries(
        Matrix_Test
        gtest_main
)

include(GoogleTest)
gtest_discover_tests(Matrix_Test)