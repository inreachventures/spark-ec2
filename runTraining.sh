#/bin/sh
/root/spark/bin/spark-submit --class vc.inreach.ml.training.classifiers.ClassifierTrainingTask --deploy-mode client --driver-memory 54g --driver-cores 14 /jar/inreach-ml-training.jar -data_path s3n://inreach-prod-dynamo-data/dynamoDbData_20170617/ -model_path s3n://inreach-ml-models/ -aws remote -classifier $CLASSIFIER -tag $CLUSTER_NAME:$CI_BRANCH -folds 3 -cross_validation some
