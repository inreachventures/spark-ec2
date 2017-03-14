#/bin/sh
/root/spark/bin/spark-submit --class vc.inreach.ml.training.classifiers.ScalingModelTask --deploy-mode client --driver-memory 14g --driver-cores 4 /jar/inreach-ml-training.jar -data_path s3n://inreach-prod-dynamo-data/dynamoDbData_20170225/ -model_path s3n://inreach-ml-models-official/ -aws remote -tag $CLUSTER_NAME:$CI_BRANCH
