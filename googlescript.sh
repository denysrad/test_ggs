#!/bin/sh
grep -i google test.txt | awk '{ print $7}'

