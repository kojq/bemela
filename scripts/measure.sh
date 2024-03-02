#!/bin/bash
echo "Binary, Size" > size_results.csv
for dir in $(find ./languages -type d)
do
    if [[ $dir == *"/src"* ]]; then
        for file in $dir/*
        do
            if [[ $file != *".nim"* && $file != *".pony"* && $file != *".rs"* ]]; then
                size=$(du -b $file | cut -f1)
                echo "$file, $size" >> size_results.csv
            fi
        done
    fi
done
