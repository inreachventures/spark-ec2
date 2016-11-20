#/bin/sh
/root/spark/bin/spark-submit --class vc.inreach.ml.scoring.SQSOrganizationScoringStream --deploy-mode client --num-executors 1 --executor-cores 4 --driver-memory 8g --driver-cores 2 /root/spark/inreach-ml-batch.jar -model_path s3n://inreach-ml-models/ -aws remote -scoring_model OvrScoringModel
