#!/bin/bash
sudo apt-get update
set -e
sudo apt-get install -y vagrant ansible
(cd ../vagrant && vagrant up)
(
 cd ../vagrant
 
  while ! vagrant status s1 |grep running; do 
    echo 'wait till machine is up'; sleep 1;
  done
  while ! vagrant status s2 |grep running; do 
    echo 'wait till machine is up'; sleep 1;
  done     
  while ! vagrant status s3 |grep running; do 
    echo 'wait till machine is up'; sleep 1;
  done
  while ! vagrant status a1 |grep running; do 
    echo 'wait till machine is up'; sleep 1;
  done
  while ! vagrant status a2 |grep running; do 
    echo 'wait till machine is up'; sleep 1;
  done      
)
./update_kernel.sh
./setup_consul.sh
./setup_docker.sh
./deploy_pings.sh