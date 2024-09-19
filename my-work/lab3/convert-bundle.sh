#!/bin/bash

wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
tar -xzvf lab3-bundle.tar.gz

# awk can remove spaces
awk '!/^[[:space:]]*$/' lab3_data.tsv

echo my_new_file.tsv

# Use `tr` - "translate"
tr '\t' ',' < lab3_data.tsv > file.csv



lines=$(tail -n +2 file.csv | wc -l)
echo $lines

tar -czvf converted-archive.tar.gz file.csv


#tsv_file = 'lab3_data.tsc'
#df = pd.read_csv(tsv_file, sep='\t')
#csv_file = 'myfile.csv'
#df.to_csv(csv_file, index=False)
