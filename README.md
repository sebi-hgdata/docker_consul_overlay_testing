# docker_consul_overlay_testing
Setting up a 3 servers and 2 agents consul cluster for testing docker overlay networks
Usage:
* tested on Ubuntu 14.04
* run bash scripts from scripts folder.
* ./setup_host.sh - sets all up. Installs ansible vagrant, starts 5 VMs, update linux kernel to 4.3, configures the 3 server 2 agent consul cluster, configures docker, consul-docker upstart
* ./run_tests.sh - starts the ping containers and tests cluster recovery and docker networking
