#!/bin/bash
cd ~/doc
cat result.txt | while read line
do
    grep -l "^$line$" * > $line.txt
done
