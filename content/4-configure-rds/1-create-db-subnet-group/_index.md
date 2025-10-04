+++
title = "Create DB Subnet Group"
date = 2024
weight = 1
chapter = false
pre = "<b>4.1. </b>"
+++

#### Create DB Subnet Group in Amazon RDS

**ℹ️ Information**: DB Subnet Group is a collection of subnets designated for your RDS database in a VPC. Subnet groups allow Amazon RDS to provide IP addresses from the subnet group when initializing database instances.

#### Steps to implement

1. Access Amazon RDS from AWS Management Console:
   - Search for the keyword: **RDS** 

![RDS](/images/4-rds/4.1.1.png)

   - Select the section: **Subnet groups**
   - Click: **Create DB subnet group**

![RDS](/images/4-rds/4.1.2.png)

2. Configure basic information:
   - Enter the name: **`fcj-lab-subnet-group-db`**
   - Enter the description: **`Subnet Group for FCJ Management`**
   - Select the VPC previously created **FCJ-Lab-vpc**

![RDS](/images/4-rds/4.1.3.png)

3. Configure Subnets:
   - Choose the **Availability Zones** created along with the **VPC**
   - Select 2 **Subnet private**
   - Review and click **Create**

![RDS](/images/4-rds/4.1.4.png)

**💡 Pro Tip**: Using multiple Availability Zones helps increase availability and fault tolerance for your database.

**🔒 Security Note**: Always place RDS databases in private subnets to enhance security and avoid direct access from the internet.

4. Confirm completion:
   - After successful creation, you will see the new DB Subnet Group in the list

![RDS](/images/4-rds/4.1.5.png)
