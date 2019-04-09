# cf-demo

1) In bash script aws_prepare.sh change the following environment variables for your environment
ENV_NAME="dev"
STACK_NAME="my-demo-$ENV_NAME"
CF_S3_BUCKET="my-demo-us-east-1"
AWS_REGION="us-east-1"
VERSION="0.0.1"
AWS_PROFILE="my-profile"

2) Copy enviroment variables in step 1 and paste in bash scripts aws_deploy.sh and aws_delete.sh
3) execute aws_prepare.sh script
4) execute aws_deploy.sh script
5) [OPTIONAL} execute aws_delete.sh script to delete all stacks were created previously in step 4
