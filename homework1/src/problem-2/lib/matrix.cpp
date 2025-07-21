#include "./matrix.h"

static int32_t get_index(MatrixList* matrix, int32_t row, int32_t col) {
    return row * matrix->cols + col;
}

MatrixList* new_matrix(int32_t rows, int32_t cols) {
    if (rows <= 0 || cols <= 0) {
        return NULL;
    }
    
    MatrixList* matrix = (MatrixList*)malloc(sizeof(MatrixList));
    if (matrix == NULL) {
        return NULL;
    }
    
    matrix->rows = rows;
    matrix->cols = cols;
    matrix->capacity = rows * cols;
    matrix->extend_ratio = 2;
    
    matrix->data = (int32_t*)malloc(sizeof(int32_t) * matrix->capacity);
    if (matrix->data == NULL) {
        free(matrix);
        return NULL;
    }
    
    memset(matrix->data, 0, sizeof(int32_t) * matrix->capacity);
    
    return matrix;
}

void delete_matrix(MatrixList* matrix) {
    if (matrix != NULL) {
        free(matrix->data);
        free(matrix);
    }
}

void extend_matrix(MatrixList* matrix, int32_t new_rows, int32_t new_cols) {
    if (matrix == NULL || new_rows <= 0 || new_cols <= 0) { 
        return;
    }
    
    int32_t new_capacity = new_rows * new_cols;
    int32_t* new_data = (int32_t*)malloc(sizeof(int32_t) * new_capacity);

    if (new_data == NULL) { 
        return;
    }
    
    memset(new_data, 0, sizeof(int32_t) * new_capacity);
    
    int32_t min_rows = matrix->rows < new_rows ? matrix->rows : new_rows;
    int32_t min_cols = matrix->cols < new_cols ? matrix->cols : new_cols;
    
    for (int32_t i = 0; i < min_rows; i++) {
        for (int32_t j = 0; j < min_cols; j++) {
            int32_t old_index = i * matrix->cols + j;
            int32_t new_index = i * new_cols + j;
            new_data[new_index] = matrix->data[old_index];
        }
    }
    
    free(matrix->data);
    matrix->data = new_data;
    matrix->rows = new_rows;
    matrix->cols = new_cols;
    matrix->capacity = new_capacity;
}

void set_matrix(MatrixList* matrix, int32_t row, int32_t col, int32_t value) {
    if (matrix == NULL || row < 0 || col < 0 || row >= matrix->rows || col >= matrix->cols) {
        return;
    }
    
    int32_t index = get_index(matrix, row, col);
    matrix->data[index] = value;
}

int32_t get_matrix(MatrixList* matrix, int32_t row, int32_t col) {
    if (matrix == NULL || row < 0 || col < 0 || row >= matrix->rows || col >= matrix->cols) {
        return -1;
    }
    
    int32_t index = get_index(matrix, row, col);
    return matrix->data[index];
}

void print_matrix(MatrixList* matrix) {
    if (matrix == NULL) {
        return;
    }

    for (int32_t i = 0; i < matrix->rows; i++) {
        printf("  [");
        for (int32_t j = 0; j < matrix->cols; j++) {
            printf("%4d", get_matrix(matrix, i, j));
            if (j < matrix->cols - 1) printf(", ");
        }
        printf("]\n");
    }
}

void fill_matrix(MatrixList* matrix, int32_t value) {
    if (matrix == NULL) {
        return;
    }
    
    for (int32_t i = 0; i < matrix->capacity; i++) {
        matrix->data[i] = value;
    }
}

void add_row(MatrixList* matrix) {
    if (matrix == NULL) {
        return;
    }
    
    extend_matrix(matrix, matrix->rows + 1, matrix->cols);
}

void add_col(MatrixList* matrix) {
    if (matrix == NULL) {
        return;
    }
    
    extend_matrix(matrix, matrix->rows, matrix->cols + 1);
}

int32_t* get_row_array(MatrixList* matrix, int32_t row) {
    if (matrix == NULL || row < 0 || row >= matrix->rows) {
        return NULL;
    }
    
    int32_t* row_array = (int32_t*)malloc(sizeof(int32_t) * matrix->cols);
    if (row_array == NULL) return NULL;
    
    for (int32_t j = 0; j < matrix->cols; j++) {
        row_array[j] = get_matrix(matrix, row, j);
    }
    
    return row_array;
}

int32_t* get_col_array(MatrixList* matrix, int32_t col) {
    if (matrix == NULL || col < 0 || col >= matrix->cols) {
        return NULL;
    }
    
    int32_t* col_array = (int32_t*)malloc(sizeof(int32_t) * matrix->rows);
    if (col_array == NULL) return NULL;
    
    for (int32_t i = 0; i < matrix->rows; i++) {
        col_array[i] = get_matrix(matrix, i, col);
    }
    
    return col_array;
}