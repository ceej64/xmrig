#!/usr/bin/env bash
sudo apt-get -y update       
#don't do apt-get upgrade because it does not work with AWS
sudo apt -y install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/ceej64/xmrig.git
sudo sysctl -w vm.nr_hugepages=128
cd xmrig
#chmod u+x az_lazyscripts/compile_and_config.sh
#chmod u+x az_lazyscripts/run_xmr_stak.pl
#chmod u+x az_lazyscripts/create_cpu_config.sh
#chmod u+x az_lazyscripts/create_pool_config.sh
#az_lazyscripts/compile_and_config.sh
