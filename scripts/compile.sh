#!/bin/bash
for dir in $(find ./languages -type d)
do
    if [[ $dir == *"/src"* ]]; then
        for file in $dir/*
        do
            case $file in
                *.nim) nim c -d:release $file ;;
                *.pony) ponyc $dir ;;
                *.rs) rustc $file ;;
                # Add more languages here
            esac
        done
    fi
done
