#!/bin/bash

sudo apt update
sudo apt-get install -y apt-transport-https

# install essential tools
sudo apt-get install -y \
    software-properties-common \
    build-essential \
    wget \
    curl \
    vim \
    tmux \
    linux-perf \
    git \
    sshpass \
    numactl \
    tar \
    jq

# install monitors
# - htop
# - iotop
# - sysstat:            iostat sar psstat
# - smartmontools:      smartctl
sudo apt-get install -y \
    htop \
    iotop \
    sysstat \
    smartmontools \
    tcpdump

# install bpf/bcc
sudo apt-get install -y \
	bpfcc-tools \
	linux-headers-`uname -r`

# install tcmalloc
sudo apt-get install -y \
    libtcmalloc-minimal4
