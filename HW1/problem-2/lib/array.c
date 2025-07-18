#include "./array.h"

ArrayList* new_list() {
    ArrayList* nums = (ArrayList*)malloc(sizeof(ArrayList));
    if (nums == NULL) {
        return NULL;
    }
    nums->capacity = 10;
    nums->arr = (int32_t*)malloc(sizeof(int32_t) * nums->capacity);
    if (nums->arr == NULL) {
        free(nums);
        return NULL;
    }
    nums->size = 0;
    nums->extend_ratio = 2;
    return nums;
}

void delete_list(ArrayList* list) {
    if (list != NULL) {
        free(list->arr);
        free(list);
    }
}

void extend_capacity(ArrayList* list) {
    if (list == NULL) {
        return;
    }
    
    int32_t new_capacity = capacity(list) * list->extend_ratio;
    int32_t* extend = (int32_t*)malloc(sizeof(int32_t) * new_capacity);
    
    if (extend == NULL) {
        return;
    }
    
    memcpy(extend, list->arr, sizeof(int32_t) * size(list));
    
    free(list->arr);
    list->arr = extend;
    list->capacity = new_capacity;
}

int32_t size(ArrayList* list) {
    if (list == NULL) return 0;
    return list->size;
}

int32_t capacity(ArrayList* list) {
    if (list == NULL) return 0;
    return list->capacity;
}

int32_t get(ArrayList* list, int32_t index) {
    if (list == NULL || index < 0 || index >= size(list)) {
        return -1;
    }
    return list->arr[index];
}

void set(ArrayList* list, int32_t index, int32_t num) {
    if (list == NULL || index < 0 || index >= size(list)) {
        return;
    }
    list->arr[index] = num;
}

void add(ArrayList* list, int32_t num) {
    if (list == NULL) return;
    
    if (size(list) == capacity(list)) {
        extend_capacity(list);
    }
    list->arr[size(list)] = num;
    ++list->size;
}

void insert_item(ArrayList* list, int32_t index, int32_t num) {
    if (list == NULL || index < 0 || index > size(list)) {
        return;
    }
    
    if (size(list) == capacity(list)) {
        extend_capacity(list);
    }
    
    for (int32_t i = size(list); i > index; --i) {
        list->arr[i] = list->arr[i - 1];
    }
    
    list->arr[index] = num;
    ++list->size;
}

int32_t remove_item(ArrayList* list, int32_t index) {
    if (list == NULL || index < 0 || index >= size(list)) {
        return -1;
    }
    
    int32_t num = list->arr[index];
    
    memmove(&list->arr[index], &list->arr[index + 1], 
            sizeof(int32_t) * (size(list) - index - 1));
    
    --list->size;
    return num;
}

int32_t* to_array(ArrayList* list) {
    if (list == NULL || list->size == 0) {
        return NULL;
    }
    
    int32_t* array = (int32_t*)malloc(sizeof(int32_t) * list->size);
    if (array == NULL) {
        return NULL;
    }
    
    memcpy(array, list->arr, sizeof(int32_t) * list->size);
    return array;
}

bool is_empty(ArrayList* list) {
    return list == NULL || list->size == 0;
}

void clear(ArrayList* list) {
    if (list != NULL) {
        list->size = 0;
    }
}

int32_t find(ArrayList* list, int32_t value) {
    if (list == NULL) return -1;
    
    for (int32_t i = 0; i < size(list); ++i) {
        if (list->arr[i] == value) {
            return i;
        }
    }
    return -1;
}