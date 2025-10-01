+++
title = "EC2 Instance Configuration"
date = 2024
weight = 1
chapter = false
pre = "<b>5.1. </b>"
+++

#### Launching an Amazon EC2 Instance

**ℹ️ Information**: Amazon Elastic Compute Cloud (Amazon EC2) provides resizable compute capacity in the AWS Cloud. Using EC2 instances eliminates the need to invest in hardware upfront, allowing you to develop and deploy applications faster.

In the AWS Management Console:

- Search for and select **EC2** in the search bar

![5.1.1](/images/5-configure-ec2/5.1.1.png)

#### Creating Your EC2 Instance

In the EC2 dashboard:

- Select **Instances** from the left navigation pane
- Click on **Launch Instances** button

![5.1.2](/images/5-configure-ec2/5.1.2.png)

- Name your instance `FCJ-Lab-my-server`
  
**💡 Pro Tip**: Use descriptive naming conventions that include environment, project, and purpose to make resource management easier as your infrastructure grows.

![5.1.3](/images/5-configure-ec2/5.1.3.png)

#### Configuring Amazon Machine Image (AMI)

- Choose the operating system **Ubuntu**
- Select **Ubuntu Server 24.04 LTS** AMI

**ℹ️ Information**: Ubuntu Server 24.04 LTS provides long-term support until 2029, ensuring stability and security updates for your production workloads.

![5.1.4](/images/5-configure-ec2/5.1.4.png)

#### Selecting Instance Type and Authentication

- Instance type **t3.medium** (2 vCPU, 4 GiB memory)
- Select **Create new key pair**

**🔒 Security Note**: Key pairs are essential for secure SSH access to your instance. Store the private key file securely and never share it. The private key cannot be recovered if lost.

![5.1.5](/images/5-configure-ec2/5.1.5.png)

- Key pair name `FCJ-Lab-key`
- Select **Create key pair**

![5.1.6](/images/5-configure-ec2/5.1.6.png)

#### Network and Security Configuration

Scroll down to the network settings section:

- VPC: **FCJ-Lab-vpc**
- Subnet: Select the **public subnet**
- Auto-assign public IP: **Enable**
- Select **Select existing security group**
- Choose **FCJ-Lab-SG**

**⚠️ Warning**: Placing EC2 instances in public subnets exposes them directly to the internet. Ensure your security group rules are properly configured to allow only necessary traffic.

![5.1.7](/images/5-configure-ec2/5.1.7.png)

- Click **Launch Instance**

![5.1.8](/images/5-configure-ec2/5.1.8.png)

#### Attaching IAM Role for Amazon ECR Access

**ℹ️ Information**: Identity and Access Management (IAM) roles allow your EC2 instance to securely access other AWS services without embedding credentials in your application code.

In the EC2 instance details page:

- Select your EC2 instance **FCJ-Lab-my-server**
- Click **Actions**
- Navigate to **Security**
- Select **Modify IAM role**

![5.1.9](/images/5-configure-ec2/5.1.9.png)

- Choose the IAM role **CustomeRWECRRole**
- Click **Update IAM role**

**💡 Pro Tip**: The CustomeRWECRRole provides read and write access to Amazon Elastic Container Registry (ECR), enabling your instance to pull and push container images without configuring explicit credentials.

![5.1.10](/images/5-configure-ec2/5.1.10.png)
