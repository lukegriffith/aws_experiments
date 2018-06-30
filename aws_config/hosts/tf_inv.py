#!/usr/bin/env python3
from subprocess import check_output
import json
import pdb

def parseTfOut(path): 
    tfOutput = check_output([
        "terraform",
        "output",
        "-state="+path+"/terraform.tfstate",
        "-json",
    ])
    
    return json.loads(tfOutput)

def formatTf(parsedTf):

    inventory = {}
    for group in parsedTf.keys():
        if 'ansible_' in group: 
            g = str(group)
            g = g.replace('ansible_', '')
            inventory[g] = {}
            inventory[g]['hosts'] = parsedTf[group]['value'] if type(parsedTf[group]['value']) == list else [parsedTf[group]['value']]

    return inventory


pto = parseTfOut('/Users/luke/GitHub/HashiDays/aws')

ft = formatTf(pto)
print(ft)
