#!/bin/bash
INVENTORY="inventories/vagrant/local"	 
set -e
(
cd ../ansible ; 

 while ansible-playbook -v run_tests.yml -i $INVENTORY; do 
    echo 'run another test';
  done 
)

