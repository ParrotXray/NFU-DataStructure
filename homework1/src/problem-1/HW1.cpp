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
        
        for (int32_t i = 0; i < new_rows; ++i) {
            for (int32_t j = 0; j < new_cols; ++j) {
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

int32_t ackermann_function_memoization(int32_t m, int32_t n) {
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
        result = ackermann_function_memoization(m - 1, 1);
    } else {
        result = ackermann_function_memoization(m - 1, ackermann_function_memoization(m, n - 1));
    }

    store_to_table(m, n, result);
    
    return result;
}

int32_t ackermann_function_recursion(int32_t m, int32_t n) {
    if (m == 0) {
        return n + 1;
    } else if (m > 0 && n == 0) {
        return ackermann_function_recursion(m - 1, 1);
    } else {
        return ackermann_function_recursion(m - 1, ackermann_function_recursion(m, n - 1));
    }
}

int32_t ackermann_function_iterative(int32_t m, int32_t n) {
    if (m < 0 || n < 0) {
        return INVALID_VALUE;
    }
    
    const int32_t MAX_STACK_SIZE = 2147483647;
    
    int32_t* m_stack = (int32_t*)malloc(sizeof(int32_t) * MAX_STACK_SIZE);
    int32_t* n_stack = (int32_t*)malloc(sizeof(int32_t) * MAX_STACK_SIZE);
    
    if (m_stack == NULL || n_stack == NULL) {
        if (m_stack) free(m_stack);
        if (n_stack) free(n_stack);
        return INVALID_VALUE;
    }
    
    int32_t stack_top = 0;
    
    m_stack[stack_top] = m;
    n_stack[stack_top] = n;
    ++stack_top;
    
    int32_t result = 0;
    
    while (stack_top > 0) {
        if (stack_top >= MAX_STACK_SIZE - 2) {
            free(m_stack);
            free(n_stack);
            return INVALID_VALUE;
        }
        
        --stack_top;
        int32_t curr_m = m_stack[stack_top];
        int32_t curr_n = n_stack[stack_top];
        
        if (curr_m == 0) {
            result = curr_n + 1;
            
            if (stack_top > 0) {
                n_stack[stack_top - 1] = result;
            }
        } else if (curr_n == 0) {
            m_stack[stack_top] = curr_m - 1;
            n_stack[stack_top] = 1;
            ++stack_top;
        } else {
            m_stack[stack_top] = curr_m - 1;
            n_stack[stack_top] = -1;
            ++stack_top;
            
            m_stack[stack_top] = curr_m;
            n_stack[stack_top] = curr_n - 1;
            ++stack_top;
        }
    }
    
    free(m_stack);
    free(n_stack);
    
    return result;
}

void calculate(int32_t m, int32_t n) {
    clock_t start, end;
    double cpu_time_used;

    printf("Memoization version:\n");
    start = clock();
    int32_t result_memoization = ackermann_function_memoization(m, n);
    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("Result: %d\n", result_memoization);
    printf("Time: %f sec\n", cpu_time_used);

    printf("\n");

    printf("Recursion version:\n");
    start = clock();
    int32_t result_recursion = ackermann_function_recursion(m, n);
    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Result: %d\n", result_recursion);
    printf("Time: %f sec\n", cpu_time_used);

    printf("\n");

    printf("Iterative version:\n");
    start = clock();
    int32_t result_iterative = ackermann_function_iterative(m, n);
    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Result: %d\n", result_iterative);
    printf("Time: %f sec\n", cpu_time_used);

    printf("\n");

    if (result_memoization == result_recursion && 
        result_memoization == result_iterative && 
        result_recursion == result_iterative
    ) {
        printf("Consistent results\n");
    } else {
        printf("Inconsistent results!\n");
    }
}


int main() {
    if (!init_ackermann_table(5, 21)) {
        return 1;
    }
    int32_t m = 0, n = 0;

    printf("Enter m and n: ");

    if (scanf("%d %d", &m, &n) != 2) {
        printf("Input error!\n");
        cleanup_ackermann_table();
        return 1;
    }
    
    calculate(m, n);
    cleanup_ackermann_table();
    return 0;
}