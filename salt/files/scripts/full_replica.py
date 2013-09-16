#!/usr/bin/python 

import json,requests 

source_server = 'http://couch.bl3dr.com'
target_server = 'http://10.251.10.176:5984'

s = requests.session()

head = {"Content-Type":"application/json"}


def create_repl(doc):
	s = requests.session()
	head = {"Content-Type":"application/json"}
	data = json.dumps(doc)
	print data
	r = s.post(target_server+'/_replicator',data=data,headers=head)
	print r
	
	
r = s.get(source_server)
if r.status_code == 200:
	r2 = s.get(source_server+'/servers/replica')
	data = r2.json()
	if 'databases' in data:
		dbs = data['databases']
		keys = dbs.keys()
		print keys
		repl = {}
		for i in keys:
			doc = {}
			doc['_id'] = i+'_down'
			doc['source'] = source_server+'/'+dbs[i]
			doc['target'] = i
			doc['create_target'] = True
			repl[i] = doc
		for i in repl.keys():
			create_repl(repl[i])		
		
else:
	print r.reason,r.status_code
	
