
export queueUrl="https://eu-west-1.queue.amazonaws.com/405574900227/ec2events"

# function reads from $queueUrl and tee's output to the file of the message id, in the current working dir.
readMsg(){
  msg=$(aws sqs receive-message --queue-url $queueUrl)
  msg_count=$(echo "$msg" | jq ".Messages | length" )
  counter=0

  while [ $counter -lt $msg_count ] 
  do 
    id=$(echo "$msg" | jq .Messages[$counter].MessageId -r)
    echo "$msg" | jq -r .Messages[$counter].Body | tee "$id"
    counter=$[counter + 1]
  done
}

# deletes the head message from the $queueUrl queue.
delMsg(){
  receipt=$(aws sqs receive-message --queue-url $queueUrl | jq .Messages[0].ReceiptHandle -r)
  aws sqs delete-message --receipt-handle "$receipt" --queue-url $queueUrl
}
