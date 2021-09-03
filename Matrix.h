//
// Created by Jiacheng on 2021/9/1.
//

#ifndef MATRIXMULTIPLICATION_MATRIX_H
#define MATRIXMULTIPLICATION_MATRIX_H

#include <vector>

class Matrix{
public:
    uint32_t dim;
    uint32_t** data;

    Matrix(const uint32_t const dim){
        this->dim = dim;
        data = (uint32_t**)calloc(dim, sizeof(uint32_t*));
        for(uint32_t i = 0 ; i < dim; i ++){
            data[i] = (uint32_t*)malloc(dim * sizeof(uint32_t));
        }
    }
    Matrix(uint32_t* data_, uint32_t dim_){
        dim = dim_;
        data = (uint32_t**)calloc(dim, sizeof(uint32_t*));
        for(uint32_t i = 0 ; i < dim; i ++){
            data[i] = (uint32_t*)malloc(dim * sizeof(uint32_t));
        }
        for(uint32_t d1 = 0; d1 < dim; d1++){
            for(uint32_t d2 = 0; d2 < dim; d2++){
                data[d1][d2] = data_[d1 * dim + d2];
            }
        }
    }
    ~Matrix(){
        for(uint32_t i = 0; i < dim; i++){
            free(data[i]);
        }
        free(data);
    }

    uint32_t get(uint32_t d1, uint32_t d2){
        if(d1 < 0 || d1 >= dim || d2 < 0 || d2 >= dim){
            // NULL就是0，无法判断是越界还是返回的0值，之后需要修改
            return NULL;
        }
        return data[d1][d2];
    }

    void display(){
        if(dim == 0){
            std::cout << "[NULL]" << std::endl;
        }
        std::cout << "-----" << std::endl;
        for(uint32_t i = 0; i < dim; i++){
            for(uint32_t j = 0; j < dim; j++){
                std::cout << data[i][j] << " ";
            }
            std::cout << "" << std::endl;
        }
        std::cout << "-----" << std::endl;
    }
};

class VirtualMx{
public:
    Matrix* backend;
    uint32_t offset_d1, offset_d2, dim;
    VirtualMx(Matrix* mx, uint32_t od1, uint32_t od2, uint32_t dim_){
        backend = mx;
        offset_d1 = od1;
        offset_d2 = od2;
        dim = dim_;
    }
    VirtualMx(VirtualMx* vm, uint32_t od1, uint32_t od2, uint32_t dim_){
        backend = vm->backend;
        offset_d1 = od1 + vm->offset_d1;
        offset_d2 = od2 + vm->offset_d2;
        dim = dim_;
    }
    uint32_t get(uint32_t d1, uint32_t d2){
        if(d1 < 0 || d1 >= dim || d2 < 0 || d2 >= dim){
            // NULL就是0，无法判断是越界还是返回的0值，之后需要修改
            return NULL;
        }
        return backend->data[d1 + offset_d1][d2 + offset_d2];
    }

    void display(){
        std::cout << "-----" << std::endl;
        for(uint32_t d1 = 0; d1 < dim; d1++){
            for(uint32_t d2 = 0; d2 < dim; d2++){
                std::cout << get(d1,d2) << " ";
            }
            std::cout << "" << std::endl;
        }
        std::cout << "-----" << std::endl;
    }
};

uint32_t* flatten(Matrix* m){
    uint32_t* result = (uint32_t*)malloc(m->dim * m->dim * sizeof(uint32_t));
    for(uint32_t i = 0; i < m->dim; i++){
        for(uint32_t j = 0; j < m->dim; j++){
            result[i*m->dim + j] = m->get(i,j);
        }
    }
    return result;
}

template<class T>
Matrix* simple_add(T* A, T* B){
    Matrix* result = new Matrix(A->dim);
    for(uint32_t i = 0; i < A->dim; i++){
        for(uint32_t j = 0; j < A->dim; j++){
            result->data[i][j] = A->get(i,j) + B->get(i,j);
        }
    }
    return result;
}

// 可以两个Matrix或者两个Virtual Matrix之间进行相乘
template<class T>
Matrix* simply_multiply(T* A, T* B){
    Matrix* C = new Matrix(A->dim);
    for(uint32_t d1 = 0; d1 < A->dim; d1++){
        for(uint32_t d2 = 0; d2 < A->dim; d2++){
            uint32_t result = 0;
            for(uint32_t d3 = 0; d3 < A->dim; d3++){
                result += A->get(d1,d3)*B->get(d3,d2);
            }
            C->data[d1][d2] = result;
        }
    }
    return C;
}
template<class T>
Matrix* strassen(T* A, T* B){
    if(A->dim <= 2){
        return simply_multiply(A,B);
    }
    uint32_t dimA = A->dim/2;
    VirtualMx A11 = VirtualMx(A,0,0,dimA);
    VirtualMx A12 = VirtualMx(A,0,dimA,dimA);
    VirtualMx A21 = VirtualMx(A,dimA, 0, dimA);
    VirtualMx A22 = VirtualMx(A,dimA,dimA,dimA);
    VirtualMx B11 = VirtualMx(B,0,0,dimA);
    VirtualMx B12 = VirtualMx(B,0,dimA,dimA);
    VirtualMx B21 = VirtualMx(B,dimA, 0, dimA);
    VirtualMx B22 = VirtualMx(B,dimA,dimA,dimA);



    return NULL;
}

#endif //MATRIXMULTIPLICATION_MATRIX_H
