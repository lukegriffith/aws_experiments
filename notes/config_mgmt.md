# Configuration Management

playbooks enters on main.yml.

playbooks can only include roles from ansible-galaxy.

We can validate this in the project_update.yml. Parsing main.yml to enusre only roles are included, and that they are restricted to a known whitelist.

- Check all yml files in repo, do not allow sub folders.
- Ensure only known roles are being called and no tasks are being invoked.

## Testing

All ansible roles that go into galaxy must pass a testing pipeline. This will include function tests of the ansible code but also any python packages related to the modules being invoked.

- Python modules should be tested aside from the ansible roles.
- Pipelines testing ansible roles need to have the development release of all python modules. This needs to be a jenkins slave that has been recently build with these deployed. Potentially this can be run in kubernetes.

Jenkins Pipeline (Templated)

1. pip install dependencies.
2. run ansible test playbook, including paramatised role.
3. run validation.

Spawn instances of these templates with the roles that need testing. Checkout code base to a folder, with ansible.cfg pointing to that as the roles folder.

Paramatise role name.

A delivery pipeline for python code is required, to ensure any external dependencies are installed. This can be done from a virtual environment deployed into the docker container. We need to ensure the AWX instances are running with this installed into pip in the container.

# Future Idea

Opposed to having user ansible configuration, potentially it could be less fluid with a general playbook. This can define host selection groups and roles associated with it.

In effect, the playbook creates the roles that can be used in AWS / OpenStack, aslong as workload instances are built with that role / tag, it will be apart of the play.

Playbook can be created, that will order databases first, then web servers, etc. Whenver a workload is created, the whole tenant is configured depending on the config.

How to change the environment, tag the host to a known tag.