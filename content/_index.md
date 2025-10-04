+++
title = "Deploy Application on Docker"
date = 2024
weight = 1
chapter = false
+++

# Deploy Application on Docker

ℹ️ **Information**: This document guides you through deploying applications on Docker using AWS services such as EC2, RDS, and Amazon ECR. Updated with the latest AWS features through 2025.

#### Main Content

1. [Introduction](1-introduction/)
2. [Deploy on Local](2-deploy-local/)
3. [Preparation](3-preparation/)
4. [Configure RDS](4-configure-rds/)
5. [Configure EC2 Instance](5-configure-ec2/)
6. [Deploy use only Docker Image](6-docker-image/)
7. [Deploy with Docker Compose](7-docker-compose/)
8. [Push Image](8-push-image/)
9. [Clean up resources](9-clean-up/)

💡 **Useful tip**: When deploying Docker applications on AWS, you should leverage managed container services like Amazon ECS or Amazon EKS for production environments.

🔒 **Security note**: Ensure compliance with AWS shared responsibility model and properly configure Security Groups and VPC networks when deploying applications.

⚠️ **Warning**: Remember to monitor AWS costs when deploying resources and clean up resources when not in use to avoid unnecessary charges.

{{% notice warning %}}
**Note:** During the lab, some components will be hidden or removed for security reasons such as Account ID and sensitive information.
{{% /notice %}}