#!/bin/bash
#获取文件夹中所有文件的文件名
#>为生成空文件 >>为添加
for file in $1*
do 
    if test -f $file
    then
        a=$file
        a=${a:2}
        sudo echo $a>>name.txt
    fi
done
