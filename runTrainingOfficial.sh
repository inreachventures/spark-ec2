#/bin/sh
/root/spark/bin/spark-submit --class vc.inreach.ml.training.classifiers.ClassifierTrainingTask \
                             --deploy-mode client \
                             --driver-memory 54g \
                             --driver-cores 14 \
                             /jar/inreach-ml-training.jar \
                             -data_path s3n://inreach-prod-dynamo-data/dynamoDbData_20170904/ \
                             -model_path s3n://inreach-ml-models-official/ \
                             -aws remote \
                             -classifier $CLASSIFIER \
                             -tag $CLUSTER_NAME:$CI_BRANCH \
                             -folds 5 \
                             -cross_validation full

#-reuse LogisticRegressionTextVsClassifier#s3n://inreach-ml-models-official/TextVsClassifier_LogisticRegression/050717-173406.716/,NaiveBayesTextVsClassifier#s3n://inreach-ml-models-official/TextVsClassifier_NaiveBayes/050717-182958.035/,RandomForestNumericVsClassifier#s3n://inreach-ml-models-official/NumericVsClassifier_RandomForestClassifier/050717-200049.185/
