#ifndef ARRAY_H
#define ARRAY_H

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

typedef struct {
    int32_t *arr;
    int32_t capacity;
    int32_t size;
    int32_t extend_ratio;
} ArrayList;

ArrayList* new_list();

void delete_list(ArrayList* list);

void extend_capacity(ArrayList* list);

int32_t size(ArrayList* list);

int32_t capacity(ArrayList* list);

int32_t get(ArrayList* list, int32_t index);

void set(ArrayList* list, int32_t index, int32_t num);

void add(ArrayList* list, int32_t num);

void insert_item(ArrayList* list, int32_t index, int32_t num);

int32_t remove_item(ArrayList* list, int32_t index);

int32_t* to_array(ArrayList* list);

bool is_empty(ArrayList* list);

void clear(ArrayList* list);

#endif 