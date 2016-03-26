import os
import sys
import argparse
from collections import OrderedDict

def get_deploy_type():
  return os.getenv('DEPLOY_TYPE','ca')


try:
    import json
except ImportError:
    import simplejson as json

class Inventory(object):

    def __init__(self, all_vars):
        self.inventory = {}
        self.read_cli_args()
        self.all_vars=all_vars
        self.inventory = self.get_inventory()      
        

    def printInventory(self):
      print json.dumps(self.inventory);

    def get_inventory(self):	
        return {
            'all':self.all_vars
        }

    def distinct(self, host_defs):
	distinct={}
	for key, value in host_defs.iteritems():
		if not distinct.has_key(value['ansible_host']):
			distinct[value['ansible_host']]=key
	return distinct.values()
    
    def read_cli_args(self):
        parser = argparse.ArgumentParser()
        parser.add_argument('--list', action = 'store_true')
        parser.add_argument('--host', action = 'store')
	parser.add_argument('--profile', action = 'store')
        self.args = parser.parse_args()
