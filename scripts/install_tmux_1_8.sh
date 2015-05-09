#!/bin/bash

wget "https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz"

tar -xf libevent-2.0.21-stable.tar.gz
./configure
make
make verify
sudo make install

wget "http://downloads.sourceforge.net/project/tmux/tmux/tmux-1.8/tmux-1.8.tar.gz"
tar xvfz tmux-1.8.tar.gz
cd tmux-1.8/
./configure && make
make
