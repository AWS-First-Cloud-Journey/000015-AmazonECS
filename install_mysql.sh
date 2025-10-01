#!/bin/bash

# Check if MySQL Community repository RPM already exists
if [ ! -f mysql80-community-release-el9-1.noarch.rpm ]; then
  sudo wget https://dev.mysql.com/get/mysql80-community-release-el9-1.noarch.rpm
fi

# Install MySQL Community repository
sudo dnf install -y mysql80-community-release-el9-1.noarch.rpm

# Install MySQL server
sudo dnf install -y mysql-community-server

# Start MySQL server
sudo systemctl start mysqld

# Enable MySQL to start on boot
sudo systemctl enable mysqld

# Check MySQL version
mysql -V

# Secure the MySQL server
sudo mysql_secure_installation

# Replace 'your-rds-endpoint', 'your-rds-username', and 'your-rds-password' with your RDS details
RDS_ENDPOINT="first-cloud-db-instance.cbjsefnjwwzo.ap-southeast-1.rds.amazonaws.com"
RDS_USERNAME="admin"
RDS_PASSWORD="123456789Awsfcj!"

# Connect to MySQL and create a new database
mysql -h $RDS_ENDPOINT -P 3306 -u $RDS_USERNAME -p$RDS_PASSWORD
