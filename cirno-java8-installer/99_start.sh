#!/bin/bash
echo "99 start..."
./00_extract.sh
./01_update.sh
./02_build.sh
echo "99 end"
