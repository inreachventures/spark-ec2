#/bin/sh
/root/spark/bin/spark-submit --class vc.inreach.ml.training.classifiers.ClassifierTrainingTask --deploy-mode client --driver-memory 14g --driver-cores 4 /jar/inreach-ml-training.jar -data_path s3n://inreach-prod-dynamo-data/dynamoDbData_20170610/ -model_path s3n://inreach-ml-models/ -aws remote -classifier $CLASSIFIER -tag $CLUSTER_NAME:$CI_BRANCH -folds 5 -cross_validation some
