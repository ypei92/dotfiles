#!/bin/bash

# Warning
echo "Please do not run this script directly"

# Get tmux and dependencies + unpack (check version)
cd $HOME/packages
wget https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz
wget https://invisible-mirror.net/archives/ncurses/ncurses-6.4.tar.gz
wget https://github.com/tmux/tmux/releases/download/3.4/tmux-3.4.tar.gz
tar -zxvf libevent-2.1.12-stable.tar.gz 
tar -zxvf ncurses-6.4.tar.gz 
tar -zxvf tmux-3.4.tar.gz 

# libevent
cd libevent-2.1.12-stable
./configure --prefix=$HOME/.tmux/ --enable-shared  # --disable-openssl
make & make install

# ncurses
cd ../ncurses-6.4
./configure --prefix=$HOME/.tmux --with-shared --enable-pc-files --with-pkg-config-libdir=$HOME/.tmux/lib/pkgconfig
make & make install

# tmux
cd ../tmux-3.4
PKG_CONFIG_PATH=$HOME/.tmux/lib/pkgconfig ./configure --prefix=$HOME/.tmux/ CFLAGS="-I$HOME/.tmux/include -I$HOME/.tmux/include/ncurses" LDFLAGS="-L$HOME/.tmux/lib -L$HOME/.tmux/include/ncurses -L$HOME/.tmux/include"
make & make install
