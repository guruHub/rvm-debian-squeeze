#!/bin/bash

sudo apt-get update

#sudo apt-get -y -V install autoconf automake autotools-dev build-essential bison bzip2 curl git libreadline5 libsqlite3-0 sqlite3 libsqlite3-dev libxml2-dev libmysqlclient-dev libreadline5-dev libruby openssl libssl-dev zlib1g zlib1g-dev zlibc git-core gcc make libxml2-dev libxslt-dev libopenssl-ruby libncurses5-dev libapr1-dev libaprutil1-dev build-essential libcurl4-openssl-dev
sudo apt-get -y -V install autoconf automake autotools-dev bison build-essential bzip2 curl gcc git git-core libapr1-dev libaprutil1-dev libc6-dev libcurl4-openssl-dev libmysqlclient-dev libncurses5-dev libopenssl-ruby libreadline6 libreadline6-dev libruby libsqlite3-0 libsqlite3-dev libssl-dev libtool libxml2-dev libxslt-dev libyaml-dev make ncurses-dev openssl sqlite3 subversion zlib1g zlib1g-dev zlibc

bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> .bashrc

# try to reload shell env
source ~/.bashrc

rvm pkg install zlib openssl
rvm install 1.9.2
rvm install 1.9.3
rvm --default use 1.9.3

echo "gem: --no-rdoc --no-ri" > .gemrc
