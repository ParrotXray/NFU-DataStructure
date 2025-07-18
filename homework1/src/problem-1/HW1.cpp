#include <iostream>
#include "./lib/matrix.h"

#define NOT_COMPUTED -1 
#define INVALID_VALUE -2 

static MatrixList* table = NULL;

bool init_ackermann_table(int32_t max_m, int32_t max_n) {
    if (table != NULL) {
        delete_matrix(table);
    }
    
    table = new_matrix(max_m + 1, max_n + 1);
    if (table == NULL) {
        return false;
    }
    
    fill_matrix(table, NOT_COMPUTED);
    
    return true;
}

void cleanup_ackermann_table() {
    if (table != NULL) {
        delete_matrix(table);
        table = NULL;
    }
}

bool is_in_table_range(int32_t m, int32_t n) {
    if (table == NULL) {
        return false;
    }

    return (m >= 0 && n >= 0 && m < table->rows && n < table->cols);
}

int32_t get_from_table(int32_t m, int32_t n) {
    if (!is_in_table_range(m, n)) {
        return NOT_COMPUTED;
    }

    return get_matrix(table, m, n);
}

void store_to_table(int32_t m, int32_t n, int32_t value) {
    if (table == NULL) {
        return;
    }
    
    if (m >= table->rows || n >= table->cols) {
        int32_t new_rows = (m >= table->rows) ? m + 10 : table->rows;
        int32_t new_cols = (n >= table->cols) ? n + 1000 : table->cols;
        
        extend_matrix(table, new_rows, new_cols);
        
        for (int32_t i = 0; i < new_rows; i++) {
            for (int32_t j = 0; j < new_cols; j++) {
                if (get_matrix(table, i, j) == 0) {
                    set_matrix(table, i, j, NOT_COMPUTED);
                }
            }
        }
    }
    
    if (is_in_table_range(m, n)) {
        set_matrix(table, m, n, value);
    }
}

int32_t ackermann_function_optimize(int32_t m, int32_t n) {
    if (m < 0 || n < 0) {
        return INVALID_VALUE;
    }

    int32_t cached_value = get_from_table(m, n);
    if (cached_value != NOT_COMPUTED) {

        return cached_value;
    }
    
    int32_t result;
    
    if (m == 0) {
        result = n + 1;
    } else if (m > 0 && n == 0) {
        result = ackermann_function_optimize(m - 1, 1);
    } else {
        result = ackermann_function_optimize(m - 1, ackermann_function_optimize(m, n - 1));
    }

    store_to_table(m, n, result);
    
    return result;
}

int32_t ackermann_function_original(int32_t m, int32_t n) {
    if (m == 0) {
        return n + 1;
    } else if (m > 0 && n == 0) {
        return ackermann_function_original(m - 1, 1);
    } else {
        return ackermann_function_original(m - 1, ackermann_function_original(m, n - 1));
    }
}

void calculate(int32_t m, int32_t n) {
    clock_t start, end;
    double cpu_time_used;

    printf("original version:\n");
    start = clock();
    int32_t result_original = ackermann_function_original(m, n);
    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Result: %d\n", result_original);
    printf("Time: %f sec\n", cpu_time_used);

    printf("\n");

    printf("optimize version:\n");
    start = clock();
    int32_t result_optimize = ackermann_function_optimize(m, n);
    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("Result: %d\n", result_optimize);
    printf("Time: %f sec\n", cpu_time_used);

    printf("\n");

    if (result_optimize == result_original) {
        printf("Consistent results\n");
    } else {
        printf("Inconsistent results!\n");
    }
}


int main() {
    if (!init_ackermann_table(5, 21)) {
        return 1;
    }

    calculate(5, 0);
    cleanup_ackermann_table();
    return 0;
}