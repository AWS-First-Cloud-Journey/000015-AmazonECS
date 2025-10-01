+++
title = "Tạo DB Subnet Group"
date = 2024
weight = 1
chapter = false
pre = "<b>4.1. </b>"
+++

#### Tạo Subnet Group DB trong Amazon RDS

**ℹ️ Information**: DB Subnet Group là một tập hợp các subnet được chỉ định cho cơ sở dữ liệu RDS của bạn trong một VPC. Subnet group cho phép Amazon RDS cung cấp địa chỉ IP từ subnet group khi khởi tạo instance cơ sở dữ liệu.

#### Các bước thực hiện

1. Truy cập Amazon RDS từ AWS Management Console:
   - Tìm kiếm từ khóa: **RDS** 
   - Chọn phần: **Subnet groups**
   - Chọn: **Create DB subnet group**

![RDS](/images/4-rds/4.1.1.png)

2. Cấu hình thông tin cơ bản:
   - Nhập tên: **`fcj-lab-subnet-group-db`**
   - Nhập mô tả: **`Subnet Group for FCJ Management`**
   - Chọn VPC đã được tạo từ trước là **FCJ-Lab-vpc**

![RDS](/images/4-rds/4.1.2.png)

3. Cấu hình các Subnet:
   - Chọn **Availability Zones** đã được tạo chung với **VPC** từ trước đó
   - Chọn 2 **Subnet private**
   - Kiểm tra lại và chọn **Create**

![RDS](/images/4-rds/4.1.3.png)

**💡 Pro Tip**: Sử dụng nhiều Availability Zone giúp tăng tính sẵn sàng và khả năng chịu lỗi cho cơ sở dữ liệu của bạn. 

**🔒 Security Note**: Luôn đặt cơ sở dữ liệu RDS trong subnet private để tăng cường bảo mật và tránh truy cập trực tiếp từ internet.

4. Xác nhận hoàn thành:
   - Sau khi tạo thành công, bạn sẽ thấy DB Subnet Group mới trong danh sách

![RDS](/images/4-rds/4.1.4.png)
