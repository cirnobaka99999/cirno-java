#!/bin/bash
echo "01 update..."
cd ./extract/DEBIAN
echo "8u181 -> 8u191"
find . -type f -exec sed -i 's|8u181|8u191|' {} \;
# copyright
echo "copyright..."
find . -type f -exec sed -i 's|~webupd8~|~cirno+webupd8~|' {} \;
find . -type f -exec sed -i 's|Alin Andrei <webupd8@gmail.com>|Cirno and Alin Andrei <webupd8@gmail.com>|' {} \;
echo "01 end"
