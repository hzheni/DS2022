#!/bin/bash

curl -o https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
tar -xzvf lab3-bundle.tar.gz

# awk can remove spaces
awk '!/^[[:space:]]*$/' myfile.tsv

# Use `tr` - "translate"
tr '\t' ',' < file.tsv > file.csv

lines=$(tail -n +2 myfile.csv | wc -l)
echo $lines

tar -czvf converted-archive.tar.gz myfile.csv
