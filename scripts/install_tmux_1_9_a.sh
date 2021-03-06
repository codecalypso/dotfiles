#!/bin/bash

wget "https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz"

tar -xf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
./configure
make
make verify
sudo make install
sudo ldconfig
cd ..

sudo apt-get install libncurses-dev

wget "http://downloads.sourceforge.net/project/tmux/tmux/tmux-1.9/tmux-1.9a.tar.gz"
tar xvfz tmux-1.9a.tar.gz
cd tmux-1.9a/
./configure && make
sudo make install
