#!/bin/bash

count_objects() {
        local object_count
        object_count=$(ls -1 | wc -l)
        echo "Number of objects in current directory: $object_count"
}

count_objects