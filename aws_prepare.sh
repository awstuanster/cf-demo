#!/bin/bash
ENV_NAME="dev"
STACK_NAME="my-demo-$ENV_NAME"
CF_S3_BUCKET="my-demo-us-east-1"
AWS_REGION="us-east-1"
VERSION="0.0.1"
AWS_PROFILE="my-profile"

# make a bucket for storing CloudFormation templates 
aws s3 mb s3://$CF_S3_BUCKET --region $AWS_REGION --profile $AWS_PROFILE
# create a new bucket folder baseline/$VERSION
aws s3api put-object --bucket $CF_S3_BUCKET --key baseline/$VERSION --profile $AWS_PROFILE
