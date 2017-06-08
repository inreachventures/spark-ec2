#/bin/sh
RC=0
while [ $RC -eq 0 ]; do
  echo "Starting scoring process"
  /root/spark/bin/spark-submit --class vc.inreach.ml.scoring.streams.SQSOrganizationScoringStream --deploy-mode client --driver-memory 6g --driver-cores 2 /jar/inreach-ml-scoring.jar -model_path s3n://inreach-ml-models-official/ -aws remote -scoring_model VsScoringModel -tag $CLUSTER_NAME:$CI_BRANCH
  RC=0
done
