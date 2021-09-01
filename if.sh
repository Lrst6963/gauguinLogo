#!/bin/bash
cou=7776054
dd if=logo.img of=./bmp/1.bmp bs=1 skip=20480 count=$cou
dd if=logo.img of=./bmp/2.bmp bs=1 skip=7798784 count=$cou
dd if=logo.img of=./bmp/3.bmp bs=1 skip=15577088 count=$cou
dd if=logo.img of=./bmp/4.bmp bs=1 skip=23355392 count=6220854
