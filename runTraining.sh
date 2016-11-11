#/bin/sh
/root/spark/bin/spark-submit --class vc.inreach.ml.classifiers.DissertationTrainingTask --deploy-mode client --driver-memory 8g --driver-cores 2 /root/spark/inreach-ml-batch.jar -data_path s3n://inreach-prod-dynamo-data/dynamoDbData_20161103 -model_path s3n://inreach-ml-models/ -aws remote -most_recent 4000
