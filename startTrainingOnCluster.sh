#!/bin/bash
./spark-ec2 --instance-type m4.xlarge --spot-price 0.1 --identity-file ../clone/src/main/resources/spark-cluster.pem --key-pair spark-cluster --slaves 2 --region eu-west-1 --copy-aws-credentials --ebs-vol-num 1 --ebs-vol-size 12 --training launch sparkTraining_$RANDOM
