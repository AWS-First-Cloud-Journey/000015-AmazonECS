+++
title = "Cài đặt các thư viện yêu cầu"
date = 2024
weight = 3
chapter = false
pre = "<b>5.2. </b>"
+++

Đầu tiên thì chúng ta sẽ phải kết nối SSH vào trong EC2 Instance mà chúng ta vừa mới tạo. Và thực hiện một số câu lệnh để cập nhật thông tin, gói cài đặt ở trong máy.

```bash
sudo apt update -y
sudo apt upgrade -y
```

![5.2.1.png](/images/5-configure-ec2/5.2.1.png)


#### Cài đặt Docker

Chúng ta sẽ phải cài đặt Docker để triển khai các ứng dụng sau này. Chúng ta sẽ sử dụng các câu lệnh sau để cài đặt

```bash
mkdir -p /tools/docker && cd /tools/docker
vi install_docker.sh
chmod +x install_docker.sh
./install_docker.sh
```

Nội dung file `install_docker.sh`

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

#### Cài đặt MySQL Client

Để có thể thêm được dữ liệu vào trong RDS, thì cần phải có MySQL Client. Tiến hành cài đặt MySQL Client.

```bash
sudo apt install mysql-client
```

![5.2.3.png](/images/5-configure-ec2/5.2.3.png)

### Kiểm tra kết quả


Kiểm tra MySQL Client

![5.2.4.png](/images/5-configure-ec2/5.2.4.png)

Và để có thể clone được mã nguồn thì cần phải có Git. Kiểm tra thử Git

![5.2.5.png](/images/5-configure-ec2/5.2.5.png)

Ok, vậy là mọi thứ đã được cài đặt ổn định.

### Clone mã nguồn từ Github

Trước khi đi tới phần tiếp theo, thì chúng ta sẽ cần phải clone mã nguồn của dự án trước.

```bash
mkdir -p /projects && cd /projects
```

```bash
git clone https://github.com/tranvix0910/aws-fcj-container-app.git
```

![5.2.7.png](/images/5-configure-ec2/5.2.7.png)
![5.2.6.png](/images/5-configure-ec2/5.2.6.png)
