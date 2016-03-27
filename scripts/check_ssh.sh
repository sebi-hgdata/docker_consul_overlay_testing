#!/bin/bash
cd ../vagrant
vagrant ssh s1 -c hostname
vagrant ssh s2 -c hostname
vagrant ssh s3 -c hostname
vagrant ssh a1 -c hostname
vagrant ssh a2 -c hostname
sleep 5