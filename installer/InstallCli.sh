#!/bin/bash 
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket
sudo apt-get install lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ 
sudo apt-get install libjansson-dev libpython-dev expat libexpat1-dev
cd installer
chmod +x cli.sh
./cli.sh install
./cli.sh
done