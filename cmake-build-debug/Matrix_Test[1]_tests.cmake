add_test( HelloTest.BasicAssertions /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug/Matrix_Test [==[--gtest_filter=HelloTest.BasicAssertions]==] --gtest_also_run_disabled_tests)
set_tests_properties( HelloTest.BasicAssertions PROPERTIES WORKING_DIRECTORY /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug)
add_test( MatrixTest.InitializeTest /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug/Matrix_Test [==[--gtest_filter=MatrixTest.InitializeTest]==] --gtest_also_run_disabled_tests)
set_tests_properties( MatrixTest.InitializeTest PROPERTIES WORKING_DIRECTORY /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug)
add_test( MatrixTest.SimpleMultiplyTest /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug/Matrix_Test [==[--gtest_filter=MatrixTest.SimpleMultiplyTest]==] --gtest_also_run_disabled_tests)
set_tests_properties( MatrixTest.SimpleMultiplyTest PROPERTIES WORKING_DIRECTORY /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug)
add_test( MatrixTest.SrassenMultiplyTest /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug/Matrix_Test [==[--gtest_filter=MatrixTest.SrassenMultiplyTest]==] --gtest_also_run_disabled_tests)
set_tests_properties( MatrixTest.SrassenMultiplyTest PROPERTIES WORKING_DIRECTORY /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug)
add_test( MatrixTest.SrassenMultiplyAdd /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug/Matrix_Test [==[--gtest_filter=MatrixTest.SrassenMultiplyAdd]==] --gtest_also_run_disabled_tests)
set_tests_properties( MatrixTest.SrassenMultiplyAdd PROPERTIES WORKING_DIRECTORY /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug)
set( Matrix_Test_TESTS HelloTest.BasicAssertions MatrixTest.InitializeTest MatrixTest.SimpleMultiplyTest MatrixTest.SrassenMultiplyTest MatrixTest.SrassenMultiplyAdd)
