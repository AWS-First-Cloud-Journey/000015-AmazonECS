+++
title = "Install required libraries"
date = 2024
weight = 2
chapter = false
pre = "<b>5.2. </b>"
+++

First, we need to connect to the EC2 instance that we just created using SSH. Then, run the following commands to update the system and its packages.

```bash
sudo apt update -y
sudo apt upgrade -y
```

![5.2.1.png](/images/5-configure-ec2/5.2.1.png)

![5.2.2.png](/images/5-configure-ec2/5.2.2.png)

#### Install Docker

We need to install Docker to deploy applications later. We will use the following commands to install:

```bash
mkdir -p /tools/docker && cd /tools/docker
vi install_docker.sh
chmod +x install_docker.sh
./install_docker.sh
```

Content of the `install_docker.sh` file:

```bash
#!/bin/bash

sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce
sudo systemctl start docker
sudo systemctl enable docker
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker --version
docker-compose --version
```

![5.2.2.png](/images/5-configure-ec2/5.2.2.png)

#### Install MySQL Client

To add data to the RDS instance, we need to install the MySQL Client. Use the following command:

```bash
sudo apt install mysql-client
```

![5.2.3.png](/images/5-configure-ec2/5.2.3.png)

### Check the results

Check MySQL Client

![5.2.4.png](/images/5-configure-ec2/5.2.4.png)

And to be able to clone the source code, we need Git. Check if Git is installed:

![5.2.5.png](/images/5-configure-ec2/5.2.5.png)

Ok, everything has been installed properly.

### Clone the source code from GitHub

Before proceeding to the next steps, we need to clone the project source code.

```bash
mkdir -p /projects && cd /projects
```

```bash
git clone https://github.com/tranvix0910/aws-fcj-container-app.git
```

![5.2.7.png](/images/5-configure-ec2/5.2.7.png)
![5.2.6.png](/images/5-configure-ec2/5.2.6.png)
