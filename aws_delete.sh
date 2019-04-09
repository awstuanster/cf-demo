#!/bin/bash
ENV_NAME="qa"
STACK_NAME="vcs-demo-$ENV_NAME"
CF_S3_BUCKET="vcs-demo-us-east-1"
AWS_REGION="us-east-1"
VERSION="0.0.1"
AWS_PROFILE="vcs-dev"

aws cloudformation delete-stack --stack-name $STACK_NAME --region $AWS_REGION --profile $AWS_PROFILE