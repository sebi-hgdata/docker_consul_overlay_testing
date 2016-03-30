# docker_consul_overlay_testing
Setting up a 3 server and 2 agent consul cluster for testing docker overlay networks
Usage:
* ```cd vagrant && vagrant up ```- this will spun 6 vms, first 5 being used for the consul cluster and last on as an ansible control machine. When the control machine is provisioned it will configure the first five machines. 
* ```vagrant ssh control``` - ssh into the control vm after provisioning is done. Check that it succeded, othervise re run ```vagrant provision```
* ``` cd docker_consul_overlay_testing/scripts && ./run_tests.sh ``` -  will run till the test fails

Scripts:
* ./setup_host.sh - sets all up. Installs ansible vagrant, starts 5 VMs, update linux kernel to 4.3, configures the 3 server 2 agent consul cluster, configures docker, consul-docker upstart
* ./run_tests.sh - starts the ping containers and tests cluster recovery and docker networking

