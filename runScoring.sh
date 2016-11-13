#/bin/sh
/root/spark/bin/spark-submit --class vc.inreach.ml.scoring.SQSOrganizationScoringStream --deploy-mode client --driver-memory 4g --driver-cores 1 /root/spark/inreach-ml-batch.jar -model_path s3n://inreach-ml-models/models/ -aws remote
