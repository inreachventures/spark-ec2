#!/bin/bash
./spark-ec2 --master-instance-type r3.4xlarge \
            --instance-type r3.4xlarge \
            --zone eu-west-1c \
            --spot-price 0.33 \
            --master-spot-price 0.33 \
            --identity-file ../clone/inreach-ml-core/src/main/resources/spark-cluster.pem \
            --key-pair spark-cluster \
            --slaves 4 \
            --region eu-west-1 \
            --copy-aws-credentials \
            --ebs-vol-num 1 \
            --ebs-vol-size 75 \
            --deploy-root-dir $JAR_DIR \
            $1 \
            launch sparkTraining_$RANDOM
