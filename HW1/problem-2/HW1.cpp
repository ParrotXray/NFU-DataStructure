#include <iostream>
#include "./lib/matrix.h"
#include "./lib/array.h"

typedef struct {
    MatrixList* matrix;
    int32_t* subset_sizes;
    int32_t subset_count;
    int32_t max_subset_size;
} PowerSetMatrix;

PowerSetMatrix* new_powerset_matrix(int32_t max_subsets, int32_t max_elements) {
    PowerSetMatrix* ps = (PowerSetMatrix*)malloc(sizeof(PowerSetMatrix));
    if (ps == NULL) return NULL;
    
    ps->matrix = new_matrix(max_subsets, max_elements);
    if (ps->matrix == NULL) {
        free(ps);
        return NULL;
    }
    
    ps->subset_sizes = (int32_t*)calloc(max_subsets, sizeof(int32_t));
    if (ps->subset_sizes == NULL) {
        delete_matrix(ps->matrix);
        free(ps);
        return NULL;
    }
    
    ps->subset_count = 0;
    ps->max_subset_size = max_elements;
    
    fill_matrix(ps->matrix, -1);
    
    return ps;
}

void delete_powerset_matrix(PowerSetMatrix* ps) {
    if (ps == NULL) {
        return;
    }
    
    delete_matrix(ps->matrix);
    free(ps->subset_sizes);
    free(ps);
}

void add_subset_to_powerset(PowerSetMatrix* ps, int32_t* subset, int32_t size) {
    if (ps == NULL || ps->subset_count >= ps->matrix->rows) {
        return;
    }
    
    if (size > ps->matrix->cols) {
        extend_matrix(ps->matrix, ps->matrix->rows, size);
        ps->max_subset_size = size;
        for (int32_t i = 0; i < ps->matrix->rows; ++i) {
            for (int32_t j = size; j < ps->matrix->cols; ++j) {
                set_matrix(ps->matrix, i, j, -1);
            }
        }
    }
    
    for (int32_t i = 0; i < size; ++i) {
        set_matrix(ps->matrix, ps->subset_count, i, subset[i]);
    }
    
    ps->subset_sizes[ps->subset_count] = size;
    ps->subset_count++;
}

int32_t* get_subset_from_powerset(PowerSetMatrix* ps, int32_t subset_index, int32_t* size) {
    if (ps == NULL || subset_index < 0 || subset_index >= ps->subset_count) {
        *size = 0;
        return NULL;
    }
    
    *size = ps->subset_sizes[subset_index];
    if (*size == 0) {
        return NULL;
    }
    
    int32_t* subset = (int32_t*)malloc(sizeof(int32_t) * (*size));
    if (subset == NULL) {
        *size = 0;
        return NULL;
    }
    
    for (int32_t i = 0; i < *size; ++i) {
        subset[i] = get_matrix(ps->matrix, subset_index, i);
    }
    
    return subset;
}

void powerset_matrix_recursive_helper(PowerSetMatrix* result, int32_t* set, int32_t set_size) {
    if (set_size == 0) {
        add_subset_to_powerset(result, NULL, 0);
        return;
    }
    
    powerset_matrix_recursive_helper(result, set + 1, set_size - 1);
    
    int32_t current_count = result->subset_count;
    
    for (int32_t i = 0; i < current_count; ++i) {
        int32_t subset_size;
        int32_t* existing_subset = get_subset_from_powerset(result, i, &subset_size);
        
        ArrayList* new_subset_list = new_list();
        if (new_subset_list == NULL) {
            if (existing_subset != NULL) {
                free(existing_subset);
            }
            continue;
        }
        
        add(new_subset_list, set[0]);
        
        for (int32_t j = 0; j < subset_size; ++j) {
            add(new_subset_list, existing_subset[j]);
        }
        
        int32_t* new_subset_array = to_array(new_subset_list);
        if (new_subset_array != NULL) {
            add_subset_to_powerset(result, new_subset_array, size(new_subset_list));
            free(new_subset_array);
        }
        
        delete_list(new_subset_list);
        if (existing_subset != NULL) {
            free(existing_subset);
        }
    }
}

PowerSetMatrix* powerset_matrix_recursive(int32_t* set, int32_t set_size) {
    if (set_size < 0) {
        return NULL;
    }
    
    int32_t total_subsets = 1 << set_size;
    
    PowerSetMatrix* result = new_powerset_matrix(total_subsets, set_size > 0 ? set_size : 1);
    if (result == NULL) {
        return NULL;
    }
    
    powerset_matrix_recursive_helper(result, set, set_size);
    
    return result;
}

PowerSetMatrix* powerset_matrix_iterative(int32_t* set, int32_t set_size) {
    if (set_size < 0) {
        return NULL;
    }
    
    int32_t total_subsets = 1 << set_size;
    PowerSetMatrix* result = new_powerset_matrix(total_subsets, set_size > 0 ? set_size : 1);
    if (result == NULL) {
        return NULL;
    }
    
    for (int32_t mask = 0; mask < total_subsets; mask++) {
        ArrayList* temp_subset = new_list();
        if (temp_subset == NULL) continue;
        
        for (int32_t i = 0; i < set_size; ++i) {
            if (mask & (1 << i)) {
                add(temp_subset, set[i]);
            }
        }
        
        int32_t* subset_array = to_array(temp_subset);
        add_subset_to_powerset(result, subset_array, size(temp_subset));
        
        if (subset_array != NULL) {
            free(subset_array);
        }
        delete_list(temp_subset);
    }
    
    return result;
}

void print_powerset_matrix(PowerSetMatrix* ps) {
    if (ps == NULL) {
        printf("NULL PowerSet\n");
        return;
    }
    
    printf("PowerSet with %d subsets:\n", ps->subset_count);
    printf("{ ");
    
    for (int32_t i = 0; i < ps->subset_count; ++i) {
        printf("{");
        
        int32_t size = ps->subset_sizes[i];
        for (int32_t j = 0; j < size; ++j) {
            int32_t value = get_matrix(ps->matrix, i, j);
            printf("%d", value);
            if (j < size - 1) printf(",");
        }
        
        printf("}");
        if (i < ps->subset_count - 1) printf(", ");
    }
    
    printf(" }\n");
}

void calculate(int32_t* set, int32_t set_size) {
    printf("\nPerformance test for set size %d:\n", set_size);
    
    clock_t start, end;
    
    start = clock();
    PowerSetMatrix* result_recursive = powerset_matrix_recursive(set, set_size);
    end = clock();
    double time_recursive = ((double)(end - start)) / CLOCKS_PER_SEC;
    
    start = clock();
    PowerSetMatrix* result_iterative = powerset_matrix_iterative(set, set_size);
    end = clock();
    double time_iterative = ((double)(end - start)) / CLOCKS_PER_SEC;
    
    printf("Recursive version: %.6f seconds, %d subsets\n", time_recursive, result_recursive->subset_count);
    printf("Iterative version: %.6f seconds, %d subsets\n", time_iterative, result_iterative->subset_count);
    
    int consistent = (result_recursive->subset_count == result_iterative->subset_count);
    printf("Results consistent: %s\n", consistent ? "Yes" : "No");
    
    delete_powerset_matrix(result_recursive);
    delete_powerset_matrix(result_iterative);
}

int main() {
    printf("\nTesting set {1, 2, 3}:\n");
    int32_t set1[] = {1, 2, 3};
    
    PowerSetMatrix* result1 = powerset_matrix_recursive(set1, 3);
    print_powerset_matrix(result1);
    
    printf("\nTesting empty set:\n");
    PowerSetMatrix* result_empty = powerset_matrix_recursive(NULL, 0);
    print_powerset_matrix(result_empty);
    
    int32_t set2[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};

    calculate(set2, 16);
    
    delete_powerset_matrix(result1);
    delete_powerset_matrix(result_empty);

    return 0;
}