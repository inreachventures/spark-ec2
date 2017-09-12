#/bin/sh
/root/spark/bin/spark-submit --conf spark.network.timeout=600s \
                             --class vc.inreach.ml.scoring.streams.SQSOrganizationScoringStream \
                             --deploy-mode client \
                             --driver-memory 54g \
                             --driver-cores 14 \
                             /jar/inreach-ml-scoring.jar \
                             -model_path s3n://inreach-ml-models-official/ \
                             -aws remote \
                             -scoring_model VsScoringModel \
                             -tag $CI_BRANCH
