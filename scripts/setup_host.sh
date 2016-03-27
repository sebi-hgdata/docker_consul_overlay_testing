#!/bin/bash
sudo apt-get update
set -e
sudo apt-get install -qy software-properties-common
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update	
sudo apt-get install -y vagrant ansible python-setuptools
	
(cd ../vagrant && vagrant up)

./check_ssh.sh
./update_kernel.sh
./check_ssh.sh
./setup_consul.sh
./setup_docker.sh
./deploy_pings.sh