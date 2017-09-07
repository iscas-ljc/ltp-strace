#!/bin/bash
for file in $1*
do 
    if test -f $file
    then
        sudo sed -i '/^[0-9].*$/d' $file
    fi
done
#删除0-9开头的函数（在生成文件中检测到了0-9开头的冗余函数）

