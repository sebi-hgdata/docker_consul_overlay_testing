import os

def get_hosts():

	hosts= [
		{
                     'ansible_host': '192.168.50.2',
 		     'ansible_ssh_private_key_file':'files/keys/test',
                     'lables': ['s1']
                },
                {
                     'ansible_host': '192.168.50.3',
 		     'ansible_ssh_private_key_file':'files/keys/test',
                     'lables': ['s2']
                }
,
                {
                     'ansible_host': '192.168.50.4',
 		     'ansible_ssh_private_key_file':'files/keys/test',
                     'lables': ['s3']
                },
                {
                     'ansible_host': '192.168.50.5',
 		     'ansible_ssh_private_key_file':'files/keys/test',
                     'lables': ['a1']
                },
                {
                     'ansible_host': '192.168.50.6',
 		     'ansible_ssh_private_key_file':'files/keys/test',
                     'lables': ['a2']
                }
        ]
        return hosts
        
