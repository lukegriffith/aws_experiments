# Processing State Changes

- Change CloudWatch to EC2 State-Change only.

## Steps

- Process Event.
  - Read json.
  - If new state pending.
    - Pull metadata from ec2 api.
    - add new entry to system (Metadata, and state).
    - Key is instance ID.
  - If new state not pending
    - Update existing entry with new state.
- Remove from queue.

## Access Requierments

- read-only access to EC2 API.
- Access to SQS to consume and delete messages.

## What we get

Instance metadata, and state changes from creation to termination.
If we track the datetime for each event, we could build up how long the host lasted for.
With tags we can attribute back to a user.

## What we shouldn't do

Still use native AWS billing to calcualte cost, use this for insights to be gathered. See who is using the platform most.