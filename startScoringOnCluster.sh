#!/bin/bash
./spark-ec2 --instance-type t2.large --identity-file ../clone/src/main/resources/spark-cluster.pem --key-pair spark-cluster --slaves 1 --region eu-west-1 --copy-aws-credentials --scoring launch sparkScoring_$RANDOM
