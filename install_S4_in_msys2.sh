#  This file is to install S4lua in msys2
pacman -S  mingw-w64-x86_64-wget
echo "downloading lua-5.2.4"
wget https://www.lua.org/ftp/lua-5.2.4.tar.gz
tar -xzvf lua-5.2.4.tar.gz
cd lua-5.2.4/
ls
make mingw
make install

# I'm not sure which command come into play. You can delete them after compiled S4lua
cp src/lua52.dll  /usr/local/lib
cp src/lua52.dll /usr/lib/lua.dll


cd ..
cd S4  # change to the directory of S4, maybe S4-master
make
cp build/S4.exe  /usr/bin 
S4 my_ex2.lua

cd ..
rm /usr/local/lib/lua52.dll
rm /usr/lib/lua.dll
