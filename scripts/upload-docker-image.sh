# !/usr/bin/env bash
# run from parent directory ./scripts/upload-docker-image.sh

###Login to aws ECR

aws ecr get-login --no-include-email --region us-east-1 > aws_login.sh
sh aws_login.sh
rm -rf aws_login.sh
# aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 783925127288.dkr.ecr.us-east-1.amazonaws.com

# Build Docker Image
docker build -t 783925127288.dkr.ecr.us-east-1.amazonaws.com/ct-example-automation-image:latest .

# docker push Image
docker push 783925127288.dkr.ecr.us-east-1.amazonaws.com/ct-example-automation-image:latest

