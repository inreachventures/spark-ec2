#/bin/sh
/root/spark/bin/spark-submit --class vc.inreach.ml.scoring.SQSOrganizationScoringStream --deploy-mode client --driver-memory 7g --driver-cores 2 /jar/inreach-ml-batch.jar -model_path s3n://inreach-ml-models-official/ -aws remote -scoring_model VsScoringModel -tag $CLUSTER_NAME:$CI_BRANCH
