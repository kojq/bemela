#!/bin/bash
echo "Binary, Time" > time_results.csv
for dir in $(find ./languages -type d)
do
    if [[ $dir == *"/src"* ]]; then
        for file in $dir/*
        do
            if [[ $file != *".nim"* && $file != *".pony"* && $file != *".rs"* ]]; then
                start=$(date +%s.%N)
                ./$file # Add your preset example inputs here
                dur=$(echo "$(date +%s.%N) - $start" | bc)
                echo "$file, $dur" >> time_results.csv
            fi
        done
    fi
done
