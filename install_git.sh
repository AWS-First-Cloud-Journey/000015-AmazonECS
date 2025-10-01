#!/bin/bash

# Update system packages
sudo dnf update -y

# Install Git
sudo dnf install git -y

# Verify Git installation
if git --version; then
    echo "Git is installed successfully."
else
    echo "Git installation failed."
    exit 1
fi

# Configure Git with user details
git_user="Your Name"
git_email="youremail@example.com"

git config --global user.name "$git_user"
git config --global user.email "$git_email"

if [ $? -eq 0 ]; then
    echo "Git is configured with the following details:"
    echo "User Name: $git_user"
    echo "User Email: $git_email"
else
    echo "Git configuration failed."
    exit 1
fi

# Configure AWS CodeCommit credentials
aws configure set aws_access_key_id YOUR_ACCESS_KEY
aws configure set aws_secret_access_key YOUR_SECRET_KEY
aws configure set default.region YOUR_REGION

if [ $? -eq 0 ]; then
    echo "AWS CodeCommit credentials configured successfully."
else
    echo "AWS CodeCommit credentials configuration failed."
    exit 1
fi

echo "Congratulations! Git is installed, configured, and AWS CodeCommit credentials are set."
