#!/bin/bash
INVENTORY="inventories/vagrant/local"	 
COMMIT='123456'

(cd ../ansible ; ansible-playbook -v deploy_pings.yml -i $INVENTORY --extra-vars "image_tag=$COMMIT")

