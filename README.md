# Deploy Application on Docker Container

A comprehensive workshop demonstrating how to deploy applications using Docker containers on AWS infrastructure, covering the complete journey from local development to cloud deployment.

## Overview

This workshop teaches you how to containerize applications and deploy them on AWS using various services including Docker Hub, Amazon ECR, Amazon RDS, and Amazon EC2. You'll learn to build, manage, and orchestrate containerized applications in both local and cloud environments.

## Architecture

The application follows a multi-tier architecture:

- **Frontend**: User interface layer served through Nginx
- **Backend**: Application logic layer (Node.js)
- **Database**: MySQL database hosted on Amazon RDS
- **Infrastructure**: AWS VPC with public/private subnets
- **Container Registry**: Docker Hub and Amazon ECR for image storage

## Services Used

- **Docker Hub**: Popular Docker image repository for storing and sharing application images
- **Nginx**: Web server and reverse proxy for load balancing and traffic distribution
- **Amazon ECR**: Secure Docker image repository integrated with AWS services
- **Amazon RDS**: Fully managed MySQL database service
- **Amazon EC2**: Cloud servers for running containerized applications

## Project Structure

```
├── content/                    # Hugo documentation content
├── static/                     # Static assets for documentation
├── themes/                     # Hugo theme files
├── cloudformation.yml          # AWS infrastructure template
├── docker-compose.yaml         # Multi-container application definition
├── deploy.sh                   # ECR deployment script
├── build_and_run.sh           # Local Docker build and run script
├── install_docker.sh          # Docker installation script
├── install_nodejs.sh          # Node.js installation script
├── install_mysql.sh           # MySQL installation script
├── user.sql                   # Database initialization script
└── config.toml                # Hugo site configuration
```

## Prerequisites

- AWS Account with appropriate permissions
- Docker and Docker Compose installed
- AWS CLI configured
- Basic knowledge of containerization concepts

## Quick Start

### 1. Install Dependencies

```bash
# Install Docker and Docker Compose
chmod +x install_docker.sh
./install_docker.sh

# Install Node.js
chmod +x install_nodejs.sh
./install_nodejs.sh

# Install MySQL (if running locally)
chmod +x install_mysql.sh
./install_mysql.sh
```

### 2. Local Development

```bash
# Build and run locally
chmod +x build_and_run.sh
./build_and_run.sh

# Or use Docker Compose
docker-compose up -d
```

### 3. AWS Deployment

```bash
# Deploy infrastructure using CloudFormation
aws cloudformation create-stack \
  --stack-name docker-workshop \
  --template-body file://cloudformation.yml \
  --parameters ParameterKey=AMIId,ParameterValue=ami-xxxxxxxx \
               ParameterKey=DBMasterUsername,ParameterValue=admin \
               ParameterKey=DBMasterPassword,ParameterValue=password123 \
               ParameterKey=KeyPairName,ParameterValue=my-key-pair

# Deploy to ECR
chmod +x deploy.sh
./deploy.sh
```

## Workshop Modules

### 1. Introduction
- Overview of containerization and Docker
- Architecture walkthrough
- Service introductions

### 2. Local Deployment
- Installing dependencies
- Running application locally
- Testing functionality

### 3. AWS Preparation
- Creating VPC and networking
- Setting up security groups
- Creating IAM roles
- Docker Hub authentication

### 4. RDS Configuration
- Creating DB subnet groups
- Launching RDS MySQL instance
- Database security configuration

### 5. EC2 Configuration
- Launching EC2 instances
- Installing required libraries
- Adding test data

### 6. Docker Image Deployment
- Building Docker images
- Running containers on EC2
- Application testing

### 7. Docker Compose Deployment
- Multi-container orchestration
- Service dependencies
- Environment configuration

### 8. Image Registry
- Pushing to Amazon ECR
- Using Docker Hub
- Image versioning

### 9. Cleanup
- Removing AWS resources
- Cost optimization
- Best practices

## Environment Variables

Create a `.env` file with the following variables:

```env
DB_NAME=your_database_name
DB_USER=your_database_user
DB_PASS=your_database_password
DB_HOST=your_database_host
NODE_ENV=production
PORT=5000
```

## CloudFormation Resources

The template creates:

- **VPC**: Custom VPC with public and private subnets
- **Internet Gateway**: For public internet access
- **Security Groups**: For EC2 and RDS access control
- **EC2 Instance**: Application server (t2.micro)
- **RDS Instance**: MySQL database (db.t2.micro)
- **Subnets**: Multi-AZ deployment across ap-southeast-1

## Docker Compose Services

- **mysql**: MySQL 8.0 database with health checks
- **node**: Application container with environment variables

## Security Considerations

- RDS instances are deployed in private subnets
- Security groups restrict access to necessary ports only
- Database credentials should be stored in AWS Secrets Manager
- Remove hardcoded credentials from deployment scripts

## Monitoring and Logging

- Container health checks implemented
- Application logs available through Docker logs
- CloudWatch integration for AWS resources

## Troubleshooting

### Common Issues

1. **Docker permission denied**
   ```bash
   sudo usermod -aG docker $USER
   # Log out and back in
   ```

2. **Database connection failed**
   - Check security group rules
   - Verify RDS endpoint and credentials
   - Ensure database is in running state

3. **ECR authentication failed**
   ```bash
   aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin <account-id>.dkr.ecr.ap-southeast-1.amazonaws.com
   ```

## Documentation

This project includes comprehensive documentation built with Hugo. To view locally:

```bash
hugo serve
```

Access at `http://localhost:1313`

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is part of the AWS First Cloud Journey educational series.

## Support

For questions and support:
- AWS Study Group Blog: https://aws.amazon.com/blogs
- Facebook Group: https://www.facebook.com/groups/awsstudygroupfcj
- Email: journeyoftheaverageguy@gmail.com

## Additional Resources

- [Docker Documentation](https://docs.docker.com/)
- [AWS ECS Documentation](https://docs.aws.amazon.com/ecs/)
- [AWS ECR Documentation](https://docs.aws.amazon.com/ecr/)
- [AWS RDS Documentation](https://docs.aws.amazon.com/rds/)
