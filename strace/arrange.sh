#!/bin/bash
for file in $1*
# $1为文件夹路径
do
    if test -f $file
    then
sudo strace -o 1.txt ./$file
a=$file
a=${a:2}
echo $name
sudo sed -i 's/(.*$//' 1.txt
sudo sed -i 's/^[^A-Za-z].*$//' 1.txt
sudo sed -i '/^ *$/d' 1.txt
sort 1.txt | uniq > ../../../../../../../home/iscas-ljc/doc/func_"$a".txt
rm -rf 1.txt
fi
done
#对文件进行strace,并将结果输出至~/doc/下.txt文件中
#可遍历整个文件夹
