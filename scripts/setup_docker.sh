INVENTORY="inventories/vagrant/local"	 
(cd ../ansible && ansible-playbook -v setup_docker.yml -i $INVENTORY)	
