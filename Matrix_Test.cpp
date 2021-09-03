//
// Created by Jiacheng on 2021/9/3.
//
#include <gtest/gtest.h>
#include "Matrix.h"

TEST(HelloTest, BasicAssertions) {
// Expect two strings not to be equal.
EXPECT_STRNE("hello", "world");
// Expect equality.
EXPECT_EQ(7 * 6, 42);
}

TEST(MatrixTest, InitializeTest) {
    auto data = new uint32_t[]{3,3,3,3,3,3,3,3,3};
    Matrix* matrix = new Matrix(data,3);
    for(uint32_t i = 0; i < 3; i++){
        for(uint32_t j = 0; j < 3; j++){
            EXPECT_EQ(matrix->get(i,j),3);
        }
    }
    matrix->display();
    VirtualMx* vm = new VirtualMx(matrix,1,1,2);
    for(uint32_t i = 0; i < 2; i++){
        for(uint32_t j = 0; j < 2; j++){
            EXPECT_EQ(vm->get(i,j),3);
        }
    }
    vm->display();
    delete vm;
    delete matrix;
    data = new uint32_t[]{1,2,3,4};
    matrix = new Matrix(data,2);
    matrix->display();

    delete matrix;
    data = new uint32_t[]{1};
    matrix = new Matrix(data,1);
    matrix->display();

    delete matrix;
    data = NULL;
    matrix = new Matrix(data,0);
    matrix->display();
}

TEST(MatrixTest, SimpleMultiplyTest){
    auto A = new uint32_t[]{1,2,2,1};
    auto B = new uint32_t[]{2,1,1,2};
    Matrix* mA = new Matrix(A,2);
    Matrix* mB = new Matrix(B,2);
    Matrix* mC = simply_multiply(mA, mB);
    mC->display();
    delete mA,mB,mC;
}

TEST(MatrixTest, SrassenMultiplyTest){
    auto A = new uint32_t[]{1,2,2,1};
    auto B = new uint32_t[]{2,1,1,2};
    Matrix* mA = new Matrix(A,2);
    Matrix* mB = new Matrix(B,2);
    Matrix* mC = simply_multiply<Matrix>(mA, mB);
    mC->display();

    VirtualMx* vA = new VirtualMx(mA,0,0,2);
    VirtualMx* vB = new VirtualMx(mB,0,0,2);
    Matrix* vC = simply_multiply<VirtualMx>(vA,vB);
    vC->display();
    delete mA,mB,mC;
}


TEST(MatrixTest, SrassenMultiplyAdd){
    auto A = new uint32_t[]{1,2,2,1};
    auto B = new uint32_t[]{2,1,1,2};
    Matrix* mA = new Matrix(A,2);
    Matrix* mB = new Matrix(B,2);
    Matrix* mC = simple_add<Matrix>(mA, mB);
    mC->display();

    VirtualMx* vA = new VirtualMx(mA,0,0,2);
    VirtualMx* vB = new VirtualMx(mB,0,0,2);
    Matrix* vC = simple_add<VirtualMx>(vA,vB);
    vC->display();
    delete mA,mB,mC;
}
