#/bin/sh
/root/spark/bin/spark-submit --conf spark.network.timeout=600s \
                             --class vc.inreach.ml.training.classifiers.ScalingModelTask \
                             --deploy-mode client \
                             --driver-memory 14g \
                             --driver-cores 4 \
                             /jar/inreach-ml-training.jar \
                             -data_path s3n://inreach-prod-dynamo-data/dynamoDbData_20170922/ \
                             -aws $AWS \
                             -tag $CLUSTER_NAME:$CI_BRANCH \
                             -run_name $RUN_NAME
