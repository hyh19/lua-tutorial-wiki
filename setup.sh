#!/usr/bin/env bash

wget http://www.lua.org/ftp/lua-5.2.3.tar.gz

tar zxf lua-5.2.3.tar.gz

cd lua-5.2.3

sudo make linux install

cd ..

rm -rf lua-5.2.3*