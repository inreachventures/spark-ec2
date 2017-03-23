#!/bin/bash
./spark-ec2 --master-instance-type m4.xlarge --instance-type m4.xlarge --zone eu-west-1c --spot-price 0.25 --master-spot-price 0.1 --identity-file ../clone/inreach-ml-core/src/main/resources/spark-cluster.pem --key-pair spark-cluster --slaves 2 --region eu-west-1 --copy-aws-credentials --ebs-vol-num 1 --ebs-vol-size 12 --deploy-root-dir $JAR_DIR $1 launch sparkTraining_$RANDOM
