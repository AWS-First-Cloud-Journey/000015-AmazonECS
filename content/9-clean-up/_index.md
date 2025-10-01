---
title: "Clean Up Resources"
date: 2024
weight: 9
chapter: false
pre: "<b>9. </b>"
---

#### Resource Cleanup Overview

**ℹ️ Information**: Proper resource cleanup in AWS is critical for cost management and security. This section guides you through terminating all resources created during this workshop.

**⚠️ Warning**: Failure to properly clean up resources may result in unexpected charges to your AWS account.

**💡 Pro Tip**: Consider using AWS Resource Groups or AWS CloudFormation for easier resource management and cleanup in future projects.

{{% notice note %}}
**Note:** In the next section, we will explore Amazon Elastic Container Service (Amazon ECS) and implement a CI/CD Pipeline, so we can skip some parts in the resource cleanup.
{{% /notice %}}

#### Clean Up Amazon Elastic Container Registry (ECR)

**ℹ️ Information**: Amazon ECR is a fully managed container registry service that makes it easy to store, manage, and deploy container images.

Follow these steps to remove your ECR repositories:

1. Navigate to the AWS Management Console
2. Search for and select **Elastic Container Registry**

![9.1](/images/9-clean-up/9.1.png)

3. Locate the repositories created during this workshop:
   - Select **fcjresbar-be**
   - Click **Delete**

![9.2](/images/9-clean-up/9.2.png)

4. Confirm the deletion when prompted

![9.3](/images/9-clean-up/9.3.png)

5. Repeat the process for the frontend repository:
   - Select **fcjresbar-fe**
   - Click **Delete**

![9.4](/images/9-clean-up/9.4.png)

6. Confirm the deletion when prompted

![9.5](/images/9-clean-up/9.5.png)

#### Clean Up Amazon EC2 Resources

**ℹ️ Information**: Amazon EC2 provides resizable compute capacity in the AWS Cloud. Terminating unused instances prevents unnecessary charges.

1. Navigate to the Amazon EC2 console
2. Search for and select **EC2**

![9.6](/images/9-clean-up/9.6.png)

3. Select the EC2 instance created during this workshop (**FCJ-Lab-my-server**)
4. From the **Instance state** menu, select **Terminate instance**

![9.7](/images/9-clean-up/9.7.png)

#### Delete Security Groups

**🔒 Security Note**: Security groups act as virtual firewalls to control inbound and outbound traffic. Always clean up unused security groups to maintain a secure environment.

1. Navigate to the Amazon VPC console
2. Search for and select **VPC**

![9.8](/images/9-clean-up/9.8.png)

3. In the left navigation panel:
   - Select **Security Groups**
   - Choose **FCJ-Lab-sg-private**
   - Click **Actions**
   - Select **Delete security groups**

![9.9](/images/9-clean-up/9.9.png)

4. Similarly, for the public security group:
   - Select **Security Groups**
   - Choose **FCJ-Lab-sg-public**
   - Click **Actions**
   - Select **Delete security groups**

![9.10](/images/9-clean-up/9.10.png)

#### Delete IAM Role

**🔒 Security Note**: IAM roles provide permissions to AWS services and should be cleaned up when no longer needed to follow the principle of least privilege.

1. Navigate to the AWS Identity and Access Management (IAM) console
2. Search for and select **IAM**

![9.11](/images/9-clean-up/9.11.png)

3. In the left navigation panel:
   - Select **Roles**
   - Search for **customRWECRRole**
   - Select the role
   - Click **Delete**

![9.12](/images/9-clean-up/9.12.png)

4. Confirm by entering the role name `customRWECRRole`
5. Click **Delete**

![9.13](/images/9-clean-up/9.13.png)

#### Clean Up Amazon VPC

**ℹ️ Information**: Amazon VPC is the networking layer for your AWS resources. Deleting a VPC also removes its associated subnets, route tables, and gateway attachments.

1. Navigate to the VPC console
2. Search for and select **VPC**
3. Select **VPC-Lab-vpc**
4. Click **Actions**
5. Select **Delete VPC**

![9.14](/images/9-clean-up/9.14.png)

**💡 Pro Tip**: Before deleting a VPC, ensure all resources within it have been terminated, including EC2 instances, RDS databases, and load balancers.

#### Clean Up Amazon RDS

**ℹ️ Information**: Amazon RDS makes it easy to set up, operate, and scale relational databases in the cloud. Properly terminating RDS instances is important to avoid ongoing charges.

1. Navigate to the Amazon RDS console
2. Search for and select **RDS**

![9.15](/images/9-clean-up/9.15.png)

3. Select **Databases**
4. Choose the RDS instance created during this workshop
5. Click **Actions**
6. Select **Delete**

![9.16](/images/9-clean-up/9.16.png)

7. In the confirmation dialog:
   - Check the acknowledgment box regarding automated backups and snapshots
   - Enter `delete me` in the field
   - Click **Delete**

![9.17](/images/9-clean-up/9.17.png)

**⚠️ Warning**: Deleting an RDS instance is permanent. Ensure you've created any necessary final snapshots if you need to preserve your data.
