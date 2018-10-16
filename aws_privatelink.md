# PrivateLink

AWS service that allows VPCs to be connected via the AWS infrastructure and does not require the presence of an IGW.

These are configured by creating VPC endpoints and configuring the endpoint to target a ELB, this allows the service to communicate via the endpoint in the recieiving VPC to the services behind the ELB.

This could be used to present VPC's or separate accounts into the C3 network without putting the network at risk.

We could deploy new VPC's for each tenant, and allow them to configure their own space. Additional target groups could be added to the ELB that is presented to add more services via workloads.