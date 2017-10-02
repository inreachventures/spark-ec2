#/bin/sh
/root/spark/bin/spark-submit --conf spark.network.timeout=600s \
                             --class vc.inreach.ml.scoring.streams.ElasticSearchBatchScorer \
                             --deploy-mode client \
                             --driver-memory 40g \
                             --driver-cores 12 \
                             /jar/inreach-ml-scoring.jar \
                             -data_path s3n://inreach-prod-dynamo-data/dynamoDbData_20170922/ \
                             -aws $AWS \
                             -scoring_model VsScoringModel \
                             -tag $CLUSTER_NAME:$CI_BRANCH \
                             -run_name $RUN_NAME
