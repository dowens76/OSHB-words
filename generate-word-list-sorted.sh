#/bin/bash

cp parsings.csv unique-words-sorted-new.csv
## Create file with just word forms in parsings.csv
perl -pi -w -e 's/(\d+),([^,]+),([^,]+),([^\n]*)\n/$2\n/g;' unique-words-sorted-new.csv

# Create list of unique word forms 
sort unique-words-sorted-new.csv | uniq -c | sort -nr > unique-words-sorted-new.csv

