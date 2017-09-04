#!/bin/bash
./spark-ec2 --instance-type m4.4xlarge --zone eu-west-1a --master-spot-price 0.25 --identity-file ../clone/inreach-ml-core/src/main/resources/spark-cluster.pem --key-pair spark-cluster --slaves 0 --region eu-west-1 --copy-aws-credentials --deploy-root-dir $JAR_DIR --scoring launch sparkScoring_$RANDOM
