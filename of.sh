#!/bin/bash
cou=7776054
oo=logo.img
for i in $(seq 1 3)
 do
    ifi=./bmp/$i.bmp
    if [ `ls -l $ifi | awk '{print $5}'` != "$cou" ]; then
                echo "$ifi检查不通过!!!"
                exit 1
        else
                echo "$ifi检查通过!!!"
    fi
done
if [ `ls -l ./bmp/4.bmp | awk '{print $5}'` != "6220854" ]; then
        echo "./bmp/4.bmp 检查不通过"
fi
dd if=./bmp/1.bmp of=$oo bs=1 seek=20480 count=$cou
dd if=./bmp/2.bmp of=$oo bs=1 seek=7798784 count=$cou
dd if=./bmp/3.bmp of=$oo bs=1 seek=15577088 count=$cou
dd if=./bmp/4.bmp of=$oo bs=1 seek=23355392 count=6220854
