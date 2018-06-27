


# Repo separation
Who owns the environment, split it for that.
 iam - security
 core - ce 
 etc 


# Auto Apply 
Use case for not using auto apply, would be for a IAM change request enabling a security engineer to apply the change.


## Sentinel
global across orgs, so might be a usecase for separating orgs. 

cross state can only be done inside an org. 

# Staging
Compound workspaces

# packer
Debug flag can enter into provisioners

# Local-exec tips 
with lifecycle directives (Create before destroy, dont destroy) local exec can be used to direct health checks, ie running a curl script to perform a http request against a new deployed server. 

# TF Talk

- Bootstrap layer for base dependecies
    - Not reliant on any cloud


# SystemD
one-shot services can be used as service healthchecks.


# Interesting Talks
Grey Failures.
Everything as Code.
Usecases from French bank + dutch police. 




