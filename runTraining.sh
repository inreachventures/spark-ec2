#/bin/sh
/root/spark/bin/spark-submit --class vc.inreach.ml.classifiers.ClassifierTrainingTask --deploy-mode client --driver-memory 7g --driver-cores 2 /jar/inreach-ml-batch.jar -data_path s3n://inreach-prod-dynamo-data/dynamoDbData_20161231/ -model_path s3n://inreach-ml-models/ -aws remote -most_recent 4500 -classifier $CLASSIFIER -tag $CLUSTER_NAME:$CI_BRANCH -folds 5 -cross_validation some
