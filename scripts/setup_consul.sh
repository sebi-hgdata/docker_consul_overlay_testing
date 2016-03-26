
INVENTORY="inventories/vagrant/local"	

(cd ../ansible && ansible-playbook -v setup_consul.yml -i $INVENTORY)	
