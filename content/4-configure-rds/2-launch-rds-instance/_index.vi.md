+++
title = "Khởi chạy RDS Instance"
date = 2024
weight = 2
chapter = false
pre = "<b>4.2. </b>"
+++

#### Tạo RDS Instance

- Chọn phần: **Databases**
- Chọn: **Create Database**

![RDS](/images/4-rds/4.2.1.png)

- Chọn phương thức: **Standard create**
- Chọn loại lưu trữ là: **MySQL**

![RDS](/images/4-rds/4.2.2.png)

- Chọn template: **Dev/Test**
- Chọn **Multi-AZ DB instance**

{{% notice tip%}}
Phần này chúng ta có thể tự điều chỉnh sao cho phù hợp với yêu cầu để tối ưu hóa chi phí của bạn, tuy nhiên cũng sẽ có một số giới hạn vậy nên cần phải tìm hiểu kỹ.
{{% /notice%}}

![RDS](/images/4-rds/4.2.3.png)
![RDS](/images/4-rds/4.2.4.png)

- Nhập tên DB instance: **`fcj-lab-rds-instance`**
- Nhập username: **`admin`**
- Nhập mật khẩu: **`letmein12345`**

![RDS](/images/4-rds/4.2.5.png)
![RDS](/images/4-rds/4.2.6.png)

- Cấu hình Instance Size
- Chọn **db.t3.micro**

![RDS](/images/4-rds/4.2.7.png)

- Kết nối tới **VPC** đã tạo
- chọn **Subnet** đã tạo từ phần trước

![RDS](/images/4-rds/4.2.8.png)

- Chọn **Security group** đã tạo cho DB
- Phần sau có thể để mặc định hoặc cấu hình theo mong muốn

![RDS](/images/4-rds/4.2.9.png)

- Kiểm tra kĩ lại các cấu hình và chọn **Create**

![RDS](/images/4-rds/4.2.10.png)

{{% notice tip%}}
Hiện tại khi tạo RDS Instance, AWS cung cấp thông tin tính toán về chi phí ngay khi tạo instance. Giúp bạn dễ dàng quản lý chi phí.
{{% /notice%}}

- Hoàn tất tạo **DB instance** và quá trình này phải chờ khoảng 15 phút để hiện **Available**

![RDS](/images/4-rds/4.2.11.png)
