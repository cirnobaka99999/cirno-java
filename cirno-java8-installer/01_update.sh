#!/bin/bash
echo "01 update..."
cd ./extract/DEBIAN
echo "JAVA_VERSION update..."
find . -type f -exec sed -i 's|JAVA_VERSION=8u181|JAVA_VERSION=8u191|' {} \;
echo "PARTNER_URL update..."
find . -type f -exec sed -i 's|PARTNER_URL=http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/|PARTNER_URL=https://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/|' {} \;
echo "SHA256SUM_TGZ update..."
find . -type f -exec sed -i 's|SHA256SUM_TGZ=.*|SHA256SUM_TGZ="53c29507e2405a7ffdbba627e6d64856089b094867479edc5ede4105c1da0d65"|'  {} \;
echo "J_DIR update..."
find . -type f -exec sed -i 's|J_DIR=jdk1.8.0_181|J_DIR=jdk1.8.0_191|' {} \;
echo "8u181 -> 8u191"
find . -type f -exec sed -i 's|8u181|8u191|' {} \;
# copyright
echo "copyright..."
find . -type f -exec sed -i 's|~webupd8~|~cirno+webupd8~|' {} \;
find . -type f -exec sed -i 's|Alin Andrei <webupd8@gmail.com>|Cirno and Alin Andrei <webupd8@gmail.com>|' {} \;
echo "01 end"
