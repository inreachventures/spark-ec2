#/bin/sh
/root/spark/bin/spark-submit --class vc.inreach.ml.training.classifiers.ClassifierTrainingTask \
                             --deploy-mode client \
                             --driver-memory 54g \
                             --driver-cores 14 \
                             /jar/inreach-ml-training.jar \
                             -data_path s3n://inreach-prod-dynamo-data/dynamoDbData_20170904/ \
                             -model_path s3n://inreach-ml-models/ \
                             -aws remote \
                             -classifier $CLASSIFIER \
                             -tag $CLUSTER_NAME:$CI_BRANCH \
                             -folds 3 \
                             -cross_validation some

#-reuse LogisticRegressionTextVsClassifier#s3n://inreach-ml-models/TextVsClassifier_LogisticRegression/050717-093112.866/,NaiveBayesTextVsClassifier#s3n://inreach-ml-models/TextVsClassifier_NaiveBayes/050717-100132.066/,LogisticRegressionWord2VecVsClassifier#s3n://inreach-ml-models/Word2VecVsClassifier_LogisticRegression/050717-100804.404/,RandomForestNumericVsClassifier#s3n://inreach-ml-models/NumericVsClassifier_RandomForestClassifier/050717-110428.815/,PerceptronNumericVsClassifier#s3n://inreach-ml-models/NumericVsClassifier_ProbabilisticMultilayerPerceptronClassifier/050717-112642.305/,LSHNumericVsClassifier#s3n://inreach-ml-models/NumericVsClassifier_ProbabilisticLSHClassifier/050717-124629.473/
