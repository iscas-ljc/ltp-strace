#!/bin/bash
      2 sudo sed -i 's/[[:space:]]//g' 1.txt
      3 sudo sed -i 's/^.*://' 1.txt
      4 sudo sort 1.txt | uniq > result.txt                                               
