+++
title = "Test Application"
date = 2024
weight = 3
chapter = false
pre = "<b>2.3. </b>"
+++

#### Check Deployment Results

**ℹ️ Information**: First, we need to go to the URL that was opened during the previous deployment: `http://localhost:5173`. At that point, you will see the following interface:

![2.3.1](/images/2-deploy-local/2.3.1.png)

#### User Authentication

**🔒 Security Note**: Use one of the following accounts to log in to the application:

- User: email `user@example.com`; password `123456`.
- Admin: email `admin@example.com`; password `123456`.

**⚠️ Warning**: In a real production environment, you should use AWS IAM Identity Center or Amazon Cognito for more secure authentication.

#### Check Interface

After logging in successfully, you will see the content on the web as follows:

![2.3.2](/images/2-deploy-local/2.3.2.png)

**💡 Pro Tip**: Navigate through some other pages to check navigation and display features:

![2.3.3](/images/2-deploy-local/2.3.3.png)

![2.3.4](/images/2-deploy-local/2.3.4.png)

#### Prepare for AWS Deployment

**ℹ️ Information**: The system working well in the local environment shows that you have successfully deployed. In the next section, we will prepare to deploy to **AWS Cloud** using **Amazon ECS** and **Docker** to leverage container scalability and efficient management.
