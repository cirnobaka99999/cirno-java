#!/bin/bash
echo "00 extract..."
DebFile="oracle-java8-set-default_8u181-1~webupd8~1_all.deb"
ShortName="oracle-java8-set-default_8u181-1~webupd8~1_all"
ExtractDir="extract"
mkdir -p "$ExtractDir"
cp $DebFile $ExtractDir
cd $ExtractDir
ar -x "$DebFile"
rm $DebFile
rm debian-binary
mkdir -p "DEBIAN"
mv control.tar.gz "DEBIAN"
cd "DEBIAN"
tar -xzf control.tar.gz
rm control.tar.gz
cd ..
tar -xzf data.tar.gz
rm data.tar.gz
echo "00 end"
