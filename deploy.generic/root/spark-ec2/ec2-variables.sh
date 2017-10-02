#!/usr/bin/env bash

#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# These variables are automatically filled in by the spark-ec2 script.
export MASTERS="{{master_list}}"
export SLAVES="{{slave_list}}"
export HDFS_DATA_DIRS="{{hdfs_data_dirs}}"
export MAPRED_LOCAL_DIRS="{{mapred_local_dirs}}"
export SPARK_LOCAL_DIRS="{{spark_local_dirs}}"
export MODULES="{{modules}}"
export SPARK_VERSION="{{spark_version}}"
export TACHYON_VERSION="{{tachyon_version}}"
export HADOOP_MAJOR_VERSION="{{hadoop_major_version}}"
export SWAP_MB="{{swap}}"
export SPARK_MASTER_OPTS="{{spark_master_opts}}"
export AWS_ACCESS_KEY_ID="{{aws_access_key_id}}"
export AWS_SECRET_ACCESS_KEY="{{aws_secret_access_key}}"
export CLUSTER_NAME="{{cluster_name}}"
export REGION="{{region}}"
export JOB_TYPE="{{job_type}}"
export SPARK_EXECUTOR_INSTANCES="{{spark_executor_instances}}"
export CI_BRANCH="{{ci_branch}}"
export CI_URL="{{ci_url}}"
export RUN_NAME="{{run_name}}"
export AWS="{{aws}}"
export CLASSIFIER="{{classifier}}"
