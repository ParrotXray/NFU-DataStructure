#ifndef MATRIX_H
#define MATRIX_H

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

typedef struct {
    int32_t *data;
    int32_t rows; 
    int32_t cols; 
    int32_t capacity;
    int32_t extend_ratio;
} MatrixList;

MatrixList* new_matrix(int32_t rows, int32_t cols);

void delete_matrix(MatrixList* matrix);

void extend_matrix(MatrixList* matrix, int32_t new_rows, int32_t new_cols);

void set_matrix(MatrixList* matrix, int32_t row, int32_t col, int32_t value);

int32_t get_matrix(MatrixList* matrix, int32_t row, int32_t col);

void print_matrix(MatrixList* matrix);

void fill_matrix(MatrixList* matrix, int32_t value);

void add_row(MatrixList* matrix);

void add_col(MatrixList* matrix);

int32_t* get_row_array(MatrixList* matrix, int32_t row);

int32_t* get_col_array(MatrixList* matrix, int32_t col);

#endif