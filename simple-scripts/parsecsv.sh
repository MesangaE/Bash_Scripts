#!/bin/bash

# this script enables you to parse csv files, read them and extract data
csv_files="data.csv"
while IFS=',' read -r col1 col2 col3; do
    echo "column 1: $col1, colum 2: $col2, column 3: $col3"
done < "$csv_file"