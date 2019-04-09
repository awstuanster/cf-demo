#!/bin/bash
ENV_NAME="dev"
STACK_NAME="my-demo-$ENV_NAME"
CF_S3_BUCKET="my-demo-us-east-1"
AWS_REGION="us-east-1"
VERSION="0.0.1"
AWS_PROFILE="my-profile"

aws cloudformation delete-stack --stack-name $STACK_NAME --region $AWS_REGION --profile $AWS_PROFILE 