#!/bin/bash
./spark-ec2 --instance-type m4.xlarge --identity-file ../clone/src/main/resources/spark-cluster.pem --key-pair spark-cluster --slaves 2 --region eu-west-1 --copy-aws-credentials --ebs-vol-num 1 --ebs-vol-size 6 --run-job /root/spark-ec2/runTraining.sh launch sparkTraining
