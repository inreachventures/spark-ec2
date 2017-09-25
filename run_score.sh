#/bin/sh
/root/spark/bin/spark-submit --conf spark.network.timeout=600s \
                             --class vc.inreach.ml.scoring.streams.SQSOrganizationScoringStream \
                             --deploy-mode client \
                             --driver-memory 54g \
                             --driver-cores 14 \
                             /jar/inreach-ml-scoring.jar \
                             -aws $AWS \
                             -scoring_model VsScoringModel \
                             -run_name $RUN_NAME \
                             -tag $RUN_NAME
