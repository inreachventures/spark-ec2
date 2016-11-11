#!/bin/bash
./spark-ec2 --instance-type m4.xlarge --identity-file ../inreach-ml-batch/src/main/resources/spark-cluster.pem --key-pair spark-cluster --slaves 2 --region eu-west-1 --copy-aws-credentials --ebs-vol-num 1 --ebs-vol-size 6 --run-job /root/spark-ec2/runModels.sh launch sparkTraining
