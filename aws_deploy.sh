#!/bin/bash
ENV_NAME="dev"
STACK_NAME="my-demo-$ENV_NAME"
CF_S3_BUCKET="my-demo-us-east-1"
AWS_REGION="us-east-1"
VERSION="0.0.1"
AWS_PROFILE="my-profile"

# upload CloudFormation templates to S3 bucket
aws s3 cp . s3://$CF_S3_BUCKET/baseline/$VERSION/ --profile $AWS_PROFILE --recursive --exclude "*" --include "*.yml"
# deploy CloudFormation stack
aws cloudformation deploy --profile $AWS_PROFILE --stack-name $STACK_NAME --region $AWS_REGION --capabilities CAPABILITY_IAM --template-file master.yml --parameter-overrides EnvironmentName=$ENV_NAME Version=$VERSION