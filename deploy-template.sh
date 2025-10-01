#!/bin/bash

# AWS Configuration - Replace with your values
AWS_REGION="ap-southeast-1"
AWS_ACCOUNT_ID="YOUR_AWS_ACCOUNT_ID"
ECR_REPO_NAME="aws-fcj-management"
DOCKER_IMAGE_NAME="aws-fcj-management"

# Ensure AWS CLI is configured with proper credentials
# Use 'aws configure' or IAM roles instead of hardcoded credentials

# Parameterization
NODE_ENV="production"
PORT="5000"

# Error Handling
function handle_error {
  echo "Error: $1"
  exit 1
}

# Build Docker image
echo "Building Docker image: $DOCKER_IMAGE_NAME"
docker build -t "$DOCKER_IMAGE_NAME" . || handle_error "Failed to build Docker image."

# Create ECR repository if it doesn't exist
if ! aws ecr describe-repositories --repository-names "$ECR_REPO_NAME" >/dev/null 2>&1; then
    echo "Creating ECR repository: $ECR_REPO_NAME"
    aws ecr create-repository --repository-name "$ECR_REPO_NAME" || handle_error "Failed to create ECR repository."
fi

# Authenticate Docker to ECR
echo "Authenticating Docker to ECR"
aws ecr get-login-password --region "$AWS_REGION" | docker login --username AWS --password-stdin "$AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com" || handle_error "Failed to authenticate Docker to ECR."

# Tag Docker image for ECR
echo "Tagging Docker image"
docker tag "$DOCKER_IMAGE_NAME" "$AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO_NAME:latest" || handle_error "Failed to tag Docker image."

# Push Docker image to ECR
echo "Pushing Docker image to ECR"
docker push "$AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO_NAME:latest" || handle_error "Failed to push Docker image to ECR."

# Run Docker container
echo "Running Docker container"
docker run -d -e NODE_ENV="$NODE_ENV" -p "$PORT:5000" "$AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO_NAME:latest" || handle_error "Failed to run Docker container."

echo "Deployment completed successfully."
