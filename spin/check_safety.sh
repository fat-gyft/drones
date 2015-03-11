#!/bin/bash
/Users/gustavemonod/Downloads/Spin/Src6.4.3/spin -a -F safety.prp "$1"
gcc -DSAFETY -o pan pan.c
./pan
