#!/bin/bash
ENV_NAME="qa"
STACK_NAME="vcs-demo-$ENV_NAME"
CF_S3_BUCKET="vcs-demo-us-east-1"
AWS_REGION="us-east-1"
VERSION="0.0.1"
AWS_PROFILE="vcs-dev"

# make a bucket for storing CloudFormation templates
#aws s3 mb s3://$CF_S3_BUCKET --region us-east-1 --profile $AWS_PROFILE
#aws s3 mb s3://vcs-demo-us-east-1 --region us-east-1 --profile vcs-dev
#aws s3api put-object --bucket $CF_S3_BUCKET --key baseline/$VERSION --profile $AWS_PROFILE
#aws s3api put-object --bucket vcs-demo-us-east-1 --key baseline/0.0.1 --profile vcs-dev
aws s3 cp . s3://$CF_S3_BUCKET/baseline/$VERSION/ --profile $AWS_PROFILE --recursive --exclude "*" --include "*.yml"
#aws s3 cp . s3://btc-xaccount-demo-us-east-1/baseline/0.0.1/ --profile cnn-qa --recursive --exclude "*" --include "*.yml"
aws cloudformation deploy --profile $AWS_PROFILE --stack-name $STACK_NAME --region $AWS_REGION --capabilities CAPABILITY_IAM --template-file master.yml --parameter-overrides EnvironmentName=$ENV_NAME Version=$VERSION