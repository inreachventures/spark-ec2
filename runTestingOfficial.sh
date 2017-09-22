#/bin/sh
/root/spark/bin/spark-submit --conf spark.network.timeout=600s \
                             --class vc.inreach.ml.scoring.batches.ElasticSearchBatchScorer \
                             --deploy-mode client \
                             --driver-memory 54g \
                             --driver-cores 14 \
                             /jar/inreach-ml-scoring.jar \
                             -data_path s3n://inreach-prod-dynamo-data/dynamoDbData_20170904/ \
                             -aws $AWS \
                             -scoring_model VsScoringModel \
                             -tag $CLUSTER_NAME:$CI_BRANCH \
                             -run_name official_v_post_July
