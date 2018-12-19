
# Select only instance state changes 
cat * | jq 'select(.["detail-type"]=="EC2 Instance State-change Notification")'


# select tags
cat * | jq 'select(.["detail-type"]=="AWS API Call via CloudTrail") | select(.detail.eventName=="RunInstances") | .detail.responseElements.instancesSet.items[].tagSet'

```json
{
  "items": [
    {
      "key": "Created-By",
      "value": "Terraform"
    },
    {
      "key": "Owner",
      "value": "Luke"
    },
    {
      "key": "Name",
      "value": "Consul-Servers"
    }
  ]
}
{
  "items": [
    {
      "key": "Created-By",
      "value": "Terraform"
    },
    {
      "key": "Name",
      "value": "Consul-Servers"
    },
    {
      "key": "Owner",
      "value": "Luke"
    }
  ]
}
{
  "items": [
    {
      "key": "Owner",
      "value": "Luke"
    },
    {
      "key": "Created-By",
      "value": "Terraform"
    },
    {
      "key": "Name",
      "value": "Consul-Servers"
    }
  ]
}
```

# Instances

cat * | jq 'select(.["detail-type"]=="AWS API Call via CloudTrail") | select(.detail.eventName=="RunInstances") | .detail.responseElements.instancesSet.items[].instanceId'

# state changes.
cat * | jq 'select(.["detail-type"]=="EC2 Instance State-change Notification")'

```json
{
  "version": "0",
  "id": "e7734cf9-94f4-e393-bc2b-fa53bdf96276",
  "detail-type": "EC2 Instance State-change Notification",
  "source": "aws.ec2",
  "account": "405574900227",
  "time": "2018-10-25T13:31:51Z",
  "region": "eu-west-1",
  "resources": [
    "arn:aws:ec2:eu-west-1:405574900227:instance/i-0e87a638cc5dc65cc"
  ],
  "detail": {
    "instance-id": "i-0e87a638cc5dc65cc",
    "state": "running"
  }
}
{
  "version": "0",
  "id": "234c3316-a419-dd70-1a16-c7353032e329",
  "detail-type": "EC2 Instance State-change Notification",
  "source": "aws.ec2",
  "account": "405574900227",
  "time": "2018-10-25T13:59:46Z",
  "region": "eu-west-1",
  "resources": [
    "arn:aws:ec2:eu-west-1:405574900227:instance/i-07b3ae1b97b9155e7"
  ],
  "detail": {
    "instance-id": "i-07b3ae1b97b9155e7",
    "state": "shutting-down"
  }
}
{
  "version": "0",
  "id": "220c0310-4a90-01e5-ac20-1a7346c8d66d",
  "detail-type": "EC2 Instance State-change Notification",
  "source": "aws.ec2",
  "account": "405574900227",
  "time": "2018-10-25T13:31:52Z",
  "region": "eu-west-1",
  "resources": [
    "arn:aws:ec2:eu-west-1:405574900227:instance/i-0d5a24b54e39d585f"
  ],
  "detail": {
    "instance-id": "i-0d5a24b54e39d585f",
    "state": "running"
  }
}
{
  "version": "0",
  "id": "1a9c92ea-f8f6-94f0-785a-072934137e9e",
  "detail-type": "EC2 Instance State-change Notification",
  "source": "aws.ec2",
  "account": "405574900227",
  "time": "2018-10-25T14:00:32Z",
  "region": "eu-west-1",
  "resources": [
    "arn:aws:ec2:eu-west-1:405574900227:instance/i-07b3ae1b97b9155e7"
  ],
  "detail": {
    "instance-id": "i-07b3ae1b97b9155e7",
    "state": "terminated"
  }
}
{
  "version": "0",
  "id": "cba8683f-2472-bc18-bf4c-ef238d69e46d",
  "detail-type": "EC2 Instance State-change Notification",
  "source": "aws.ec2",
  "account": "405574900227",
  "time": "2018-10-25T13:31:34Z",
  "region": "eu-west-1",
  "resources": [
    "arn:aws:ec2:eu-west-1:405574900227:instance/i-0d5a24b54e39d585f"
  ],
  "detail": {
    "instance-id": "i-0d5a24b54e39d585f",
    "state": "pending"
  }
}
{
  "version": "0",
  "id": "10e8b2b6-964d-aea7-716b-cd534a303449",
  "detail-type": "EC2 Instance State-change Notification",
  "source": "aws.ec2",
  "account": "405574900227",
  "time": "2018-10-25T13:31:52Z",
  "region": "eu-west-1",
  "resources": [
    "arn:aws:ec2:eu-west-1:405574900227:instance/i-0e23984ba5dd9face"
  ],
  "detail": {
    "instance-id": "i-0e23984ba5dd9face",
    "state": "running"
  }
}
{
  "version": "0",
  "id": "2145d723-44d0-8a3c-ff89-98e2fde58e21",
  "detail-type": "EC2 Instance State-change Notification",
  "source": "aws.ec2",
  "account": "405574900227",
  "time": "2018-10-25T13:56:35Z",
  "region": "eu-west-1",
  "resources": [
    "arn:aws:ec2:eu-west-1:405574900227:instance/i-0c12b5f683b3c6fc8"
  ],
  "detail": {
    "instance-id": "i-0c12b5f683b3c6fc8",
    "state": "running"
  }
}
{
  "version": "0",
  "id": "00c03baf-973f-a985-d5c1-f2ed91a533b2",
  "detail-type": "EC2 Instance State-change Notification",
  "source": "aws.ec2",
  "account": "405574900227",
  "time": "2018-10-25T13:43:04Z",
  "region": "eu-west-1",
  "resources": [
    "arn:aws:ec2:eu-west-1:405574900227:instance/i-0e23984ba5dd9face"
  ],
  "detail": {
    "instance-id": "i-0e23984ba5dd9face",
    "state": "terminated"
  }
}
{
  "version": "0",
  "id": "8e016e00-9764-84fb-8f56-4cab156f9ae7",
  "detail-type": "EC2 Instance State-change Notification",
  "source": "aws.ec2",
  "account": "405574900227",
  "time": "2018-10-25T13:56:18Z",
  "region": "eu-west-1",
  "resources": [
    "arn:aws:ec2:eu-west-1:405574900227:instance/i-0c12b5f683b3c6fc8"
  ],
  "detail": {
    "instance-id": "i-0c12b5f683b3c6fc8",
    "state": "pending"
  }
}
{
  "version": "0",
  "id": "bc37221b-8174-4320-2676-9e676d98150c",
  "detail-type": "EC2 Instance State-change Notification",
  "source": "aws.ec2",
  "account": "405574900227",
  "time": "2018-10-25T13:59:46Z",
  "region": "eu-west-1",
  "resources": [
    "arn:aws:ec2:eu-west-1:405574900227:instance/i-01c065800b92d02cc"
  ],
  "detail": {
    "instance-id": "i-01c065800b92d02cc",
    "state": "shutting-down"
  }
}
{
  "version": "0",
  "id": "07be5011-25bc-56ac-d902-2722e53bd24c",
  "detail-type": "EC2 Instance State-change Notification",
  "source": "aws.ec2",
  "account": "405574900227",
  "time": "2018-10-25T14:00:08Z",
  "region": "eu-west-1",
  "resources": [
    "arn:aws:ec2:eu-west-1:405574900227:instance/i-0c12b5f683b3c6fc8"
  ],
  "detail": {
    "instance-id": "i-0c12b5f683b3c6fc8",
    "state": "terminated"
  }
}
{
  "version": "0",
  "id": "8eaec42c-2760-e5ce-3de2-b27478a293ee",
  "detail-type": "EC2 Instance State-change Notification",
  "source": "aws.ec2",
  "account": "405574900227",
  "time": "2018-10-25T13:42:18Z",
  "region": "eu-west-1",
  "resources": [
    "arn:aws:ec2:eu-west-1:405574900227:instance/i-0e23984ba5dd9face"
  ],
  "detail": {
    "instance-id": "i-0e23984ba5dd9face",
    "state": "shutting-down"
  }
}

```