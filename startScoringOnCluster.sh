#!/bin/bash
./spark-ec2 --instance-type m4.xlarge --identity-file ../clone/src/main/resources/spark-cluster.pem --key-pair spark-cluster --slaves 1 --region eu-west-1 --copy-aws-credentials --ebs-vol-num 1 --ebs-vol-size 6 --scoring launch sparkScoring
