#!/bin/bash
mkdir dir1
cd dir1
mkdir dir2
cd dir2
mkdir dir3
touch file01 file02 file03 file04 file05
cd dir3
touch file06 file07 file08 file09 file10
cd ../..
tree
cd ..
rm -r dir1
