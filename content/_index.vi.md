+++
title = "Triển khai ứng dụng trên Docker với AWS"
date = 2025
weight = 1
chapter = false
+++

# Triển khai ứng dụng trên Docker với AWS

ℹ️ **Thông tin**: Tài liệu này hướng dẫn triển khai ứng dụng trên Docker sử dụng các dịch vụ AWS như EC2, RDS, và Amazon ECR. Được cập nhật với các tính năng mới nhất của AWS cho đến năm 2025.

#### Nội dung chính

1. [Giới thiệu](1-introduction/)
2. [Triển khai ở máy cục bộ (Local)](2-deploy-local/)
3. [Các bước chuẩn bị](3-preparation/)
4. [Cấu hình Amazon RDS](4-configure-rds/)
5. [Cấu hình Amazon EC2 Instance](5-configure-ec2/)
6. [Triển khai bằng Docker image](6-docker-image/)
7. [Triển khai bằng Docker Compose](7-docker-compose/)
8. [Đẩy image lên Amazon ECR](8-push-image/)
9. [Dọn dẹp tài nguyên AWS](9-clean-up/)

💡 **Mẹo hữu ích**: Khi triển khai ứng dụng Docker trên AWS, bạn nên tận dụng các dịch vụ quản lý container như Amazon ECS hoặc Amazon EKS cho môi trường sản xuất.

🔒 **Lưu ý bảo mật**: Đảm bảo tuân thủ mô hình trách nhiệm chia sẻ của AWS và cấu hình đúng các nhóm bảo mật (Security Groups) và mạng VPC khi triển khai ứng dụng.

⚠️ **Cảnh báo**: Nhớ theo dõi chi phí AWS khi triển khai tài nguyên và dọn dẹp tài nguyên khi không sử dụng để tránh phát sinh chi phí không cần thiết.

{{% notice warning %}}
**Lưu ý:** Trong quá trình thực hiện bài lab sẽ có các thành phần được che hoặc xóa vì lí do an toàn như Account ID và các thông tin nhạy cảm khác.
{{% /notice %}}