#!/bin/bash
./spark-ec2 --master-instance-type t2.large --instance-type m4.xlarge --zone eu-west-1c --spot-price 0.1 --identity-file ../clone/src/main/resources/spark-cluster.pem --key-pair spark-cluster --slaves 1 --region eu-west-1 --copy-aws-credentials --ebs-vol-num 1 --ebs-vol-size 12 --deploy-root-dir $JAR_DIR $1 launch sparkTraining_$RANDOM
