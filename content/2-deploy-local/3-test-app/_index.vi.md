+++
title = "Kiểm tra ứng dụng"
date = 2024
weight = 3
chapter = false
pre = "<b>2.3. </b>"
+++

#### Kiểm tra kết quả triển khai

**ℹ️ Information**: Đầu tiên, chúng ta sẽ cần truy cập đường dẫn đã được mở ra trong lần triển khai trước đó `http://localhost:5173`. Khi đó chúng ta sẽ nhận được giao diện như sau:

![2.3.1](/images/2-deploy-local/2.3.1.png)

#### Xác thực người dùng

**🔒 Security Note**: Dùng một trong hai tài khoản sau để đăng nhập vào ứng dụng:

- User: email `user@example.com`; password `123456`.
- Admin: email `admin@example.com`; password `123456`.

**⚠️ Warning**: Trong môi trường sản xuất thực tế, cần sử dụng AWS IAM Identity Center hoặc Amazon Cognito cho xác thực an toàn hơn.

#### Kiểm tra giao diện

Sau khi đăng nhập thành công, bạn sẽ thấy nội dung trên trang web như sau:

![2.3.2](/images/2-deploy-local/2.3.2.png)

**💡 Pro Tip**: Chuyển sang một số trang khác để kiểm tra tính năng điều hướng và hiển thị:

![2.3.3](/images/2-deploy-local/2.3.3.png)

![2.3.4](/images/2-deploy-local/2.3.4.png)

#### Chuẩn bị cho triển khai AWS

**ℹ️ Information**: Việc hệ thống hoạt động tốt trên môi trường local cho thấy bạn đã triển khai thành công. Ở phần tiếp theo, chúng ta sẽ chuẩn bị triển khai lên **AWS Cloud** sử dụng **Amazon ECS** và **Docker** để tận dụng khả năng mở rộng và quản lý container hiệu quả.
