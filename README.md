# HashiDays2018
Code created throughout the training & two conference days.

# Terraform & Ansible: Automated consul deployment
I've created a terraform workspace, and ansible playbook that create a number of centos boxes in AWS, ansible uses the terraform output to dynamically genearte an inventory, and automatically configure the environment with currently a 1 server consul cluster. 

```bash
# Configure AWS credentials.
aws configure # Enter access/secrey key.

# Cat content of public key, for terraform variable.
ssh_pub_key=$(cat ~/.ssh/id_rsa.pub)


# Working path of HashiDays/aws.
# Conver to use environment variables, once you know the syntax for it.
terraform init && terraform apply --auto-approve /
    -var "public_key=$ssh_pub_key"
cd ../aws_config

# if not using id_rsa.pub as public key, access key will need to be explicitly set in the ansible.cfg
ansible-playbook ansible/converge.yml
```