#!/bin/bash
echo "02 build..."
dpkg-deb --build extract
echo "extract.deb -> cirno-java8-installer.deb"
mv extract.deb cirno-java8-installer.deb
echo "02 end"
