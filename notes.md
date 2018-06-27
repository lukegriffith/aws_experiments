
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

# Dutch National Police
Openstack deploying VM's with Terraform. 

moving away from Kerberos 

# Take aways

Sentinel can be used to permission workspaces for a defined use of the code. For example, we can enforce that only a certain module is being used in the configuration

eg.

```hcl
#iam/project-id.tf

data "consul(?)" "ce_users" {
  
}

module "ce_users" { 
  path = "ce_template"

}

```

Need to create a pipeline, where we use ansible to configure an image, then wok backwards to get it all into packer first.

Need to identify;
- Actions that are not dependant on the state.
IE, the current ansible plays get to enabling consul.service, but that can be put into the packer image. Break the play up and run it in a packer stage before to create the AMI.

# Interesting Talks
Grey Failures.
Everything as Code.
Usecases from French bank + dutch police. 


# Facade 
The facade can be considered the front door to what we're giving to the developers.

To work on: 
IaC repository structure guidelines.
Sentinel review on workspaces, to enforce that only certain modules are used.
Versioned modules in the repository. 


To Develop:
Reference architecture, that can be templated
Workspaces that provide API end points. What API end point

Demo:
Merge pull review, have infrastructure built with githooks approval process in github.

Peer review of infrastructure. 
VM Built 
