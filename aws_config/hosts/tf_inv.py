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
        "all": {
            "hosts": parsedTf['public_ip']['value']
        }
    }


print(formatTf(parseTfOut('/Users/luke/GitHub/HashiDays/aws')))
