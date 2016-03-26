INVENTORY="inventories/vagrant/local"	 
(cd ../ansible && ansible-playbook -v update_linux_kernel.yml -i $INVENTORY)	
