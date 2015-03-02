#!/bin/bash
spin -a -F safety.prp "$1"
gcc -DSAFETY -o pan pan.c
./pan
