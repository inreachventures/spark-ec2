#!/bin/bash
./spark-ec2 --instance-type m4.4xlarge \
            --identity-file ../clone/inreach-ml-core/src/main/resources/spark-cluster.pem \
            --key-pair spark-cluster \
            --slaves 0 \
            --region eu-west-1 \
            --copy-aws-credentials \
            --deploy-root-dir $JAR_DIR \
            launch sparkTesting_$RANDOM
