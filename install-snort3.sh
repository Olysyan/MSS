#!/bin/bash
sudo apt-get update && sudo apt-get dist-upgrade -y
sudo apt-get install make && sudo apt-get install cmake && sudo apt-get install libboost-all-dev
sudo apt-get install -y build-essential autotools-dev libdumbnet-dev libluajit-5.1-dev libpcap-dev \zlib1g-dev pkg-config libhwloc-dev cmake liblzma-dev openssl libssl-dev cpputest libsqlite3-dev \libtool uuid-dev  git autoconf bison flex libcmocka-dev libnetfilter-queue-dev libunwind-dev \libmnl-dev ethtool
mkdir ~/snort_src
cd  ~/snort_src
wget https://github.com/rurban/safeclib/releases/download/v02092020/libsafec-02092020.tar.gz
tar -xzvf libsafec-02092020.tar.gz
cd libsafec-02092020.0-g6d921f
./configure
make && sudo make install
cd ~/snort_src/
wget https://ftp.pcre.org/pub/pcre/pcre-8.44.tar.gz
tar -xzvf pcre-8.44.tar.gz
cd pcre-8.44
./configure
make && sudo make install
cd ~/snort_src
wget https://github.com/gperftools/gperftools/releases/download/gperftools-2.8/gperftools-2.8.tar.gz
tar xzvf gperftools-2.8.tar.gz
cd gperftools-2.8
./configure
make && sudo make install
cd ~/snort_src  
wget http://www.colm.net/files/ragel/ragel-6.10.tar.gz
tar -xzvf ragel-6.10.tar.gz
cd ragel-6.10
./configure
make && sudo make install  
cd ~/snort_src
wget https://github.com/intel/hyperscan/archive/v5.3.0.tar.gz
tar -xvzf v5.3.0.tar.gz
mkdir ~/snort_src/hyperscan-5.3.0-build
cd hyperscan-5.3.0-build/
cmake -DCMAKE_INSTALL_PREFIX=/usr/local -DBOOST_ROOT=~/snort_src/boost_1_74_0/ ../hyperscan-5.3.0
make && sudo make install
cd ~/snort_src
wget https://github.com/google/flatbuffers/archive/v1.12.0.tar.gz -O flatbuffers-v1.12.0.tar.gz
tar -xzvf flatbuffers-v1.12.0.tar.gz
mkdir flatbuffers-build
cd flatbuffers-build
cmake ../flatbuffers-1.12.0
make && sudo make install
cd ~/snort_src/
wget https://github.com/snort3/libdaq/archive/refs/tags/v3.0.4.tar.gz
tar -xzvf v3.0.4.tar.gz
cd libdaq-3.0.4
./bootstrap
./configure
make && sudo make install && sudo ldconfig
cd ~/snort_src
wget https://github.com/snort3/snort3/archive/refs/tags/3.1.6.0.tar.gz
tar -xzvf 3.1.6.0.tar.gz
cd snort3-3.1.6.0
./configure_cmake.sh --prefix=/usr/local --enable-tcmalloc
cd build
make && sudo make install
snort -V