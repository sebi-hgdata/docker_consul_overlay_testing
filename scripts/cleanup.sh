#!/bin/bash
INVENTORY="inventories/vagrant/local"	 
(cd ../ansible ; ansible-playbook -v cleanup.yml -i $INVENTORY)

