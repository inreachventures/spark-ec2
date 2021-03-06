#!/bin/bash
./spark-ec2 --master-instance-type m4.xlarge \
            --instance-type m4.xlarge \
            --zone eu-west-1c \
            --spot-price 0.06 \
            --master-spot-price 0.06 \
            --identity-file ../clone/inreach-ml-core/src/main/resources/spark-cluster.pem \
            --key-pair spark-cluster \
            --slaves 1 \
            --region eu-west-1 \
            --copy-aws-credentials \
            --ebs-vol-num 1 \
            --ebs-vol-size 12 \
            --deploy-root-dir $JAR_DIR \
            launch sparkScaling_$RANDOM
