#!/bin/sh

set -e -x

rm -rf t

mkdir t

cd t

git init

date

#../crap-clone "$@" | git-fast-import --export-marks=marks.txt
valgrind --suppressions=../valg.supp --partial-loads-ok=yes --leak-check=full --show-reachable=yes ../crap-clone "$@" | git fast-import --export-marks=marks.txt

date
