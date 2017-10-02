#/bin/sh
/root/spark/bin/spark-submit --conf spark.network.timeout=600s \
                             --class vc.inreach.ml.training.classifiers.ClassifierTrainingTask \
                             --deploy-mode client \
                             --driver-memory 40g \
                             --driver-cores 12 \
                             /jar/inreach-ml-training.jar \
                             -data_path s3n://inreach-prod-dynamo-data/dynamoDbData_20170922/ \
                             -aws $AWS \
                             -tag $CLUSTER_NAME:$CI_BRANCH \
                             -run_name $RUN_NAME
