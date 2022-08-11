#!/bin/bash

lines=$(awk 'END { print NR }' $1)
awk -v lines=$lines '{if(NR==int((lines+1)/2)) print $0}' $1

