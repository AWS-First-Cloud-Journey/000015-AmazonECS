#!/bin/bash

# Step 1: Update Amazon Linux 2023 Packages
sudo dnf update -y

# Step 2: Download MySQL repository
sudo dnf install -y wget

sudo wget https://dev.mysql.com/get/mysql80-community-release-el9-3.noarch.rpm 
sudo ls -lrt

# Step 3: Install MySQL 8 on Amazon Linux 2023
sudo dnf install mysql80-community-release-el9-1.noarch.rpm
dnf repolist enabled | grep "mysql.*-community.*"
sudo dnf install mysql-community-server

# Step 4: Start MySQL Service
sudo systemctl start mysqld
sudo systemctl enable mysqld

# Wait for MySQL to start
sleep 5

# Step 5: Secure MySQL Installation
temp_password=$(sudo grep 'temporary password' /var/log/mysqld.log | awk '{print $NF}')
echo "The temporary password is: $temp_password"
sudo mysql_secure_installation -p$temp_password

# Step 6: Access Database CLI
echo "You can now access the MySQL command-line interface by running:"
echo "mysql -u root -p"

echo "MySQL Server installation and configuration completed."

ALTER USER 'root'@'localhost' IDENTIFIED BY '123456789!Awsfcj';

_9Hf5aghk4sE


# Step 7: Create a New MySQL User (Optional)
# Replace 'yourusername' and 'yourpassword' with your desired username and password
# Uncomment and modify the following lines if you want to create a new user
CREATE USER 'awsfcjuser'@'localhost' IDENTIFIED BY '123456789!Awsfcj';
GRANT ALL PRIVILEGES ON *.* TO 'awsfcjuser'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;