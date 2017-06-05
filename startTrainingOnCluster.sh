#!/bin/bash
./spark-ec2 --master-instance-type m4.xlarge --instance-type m4.xlarge --zone eu-west-1a --spot-price 0.03 --master-spot-price 0.03 --identity-file ../clone/inreach-ml-core/src/main/resources/spark-cluster.pem --key-pair spark-cluster --slaves 2 --region eu-west-1 --copy-aws-credentials --ebs-vol-num 1 --ebs-vol-size 20 --deploy-root-dir $JAR_DIR $1 launch sparkTraining_$RANDOM
