#!/bin/bash
sudo sed -i 's'/[[:space:]]//g' 1.txt
sudo sed -i 's/^.*://' 1.txt
sudo sort 1.txt | uniq > result.txt
