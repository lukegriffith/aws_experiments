#!/usr/bin/env python3
from subprocess import check_output
import json

def parseTfOut(path): 
    tfOutput = check_output([
        "terraform",
        "output",
        "-state="+path+"/terraform.tfstate",
        "-json",
    ])
    
    return json.loads(tfOutput)

def formatTf(parsedTf):

    return {
        "nodes": {
            "hosts": parsedTf['public_ip']['value']
        },
        "consul_server": {
            "hosts": [parsedTf['public_ip']['value'][0]] 
        }
    }


print(formatTf(parseTfOut('/Users/luke/GitHub/HashiDays/aws')))
