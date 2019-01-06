#!/bin/bash -x

EIP=$1
INSTANCE_ID=$(ec2metadata --instance-id)
REGION=$(ec2metadata --availability-zone | sed 's/.$//')

/usr/bin/aws --region $REGION ec2 disassociate-address --public-ip $EIP
/usr/bin/aws --region $REGION ec2 associate-address --public-ip $EIP --instance-id $INSTANCE_ID
