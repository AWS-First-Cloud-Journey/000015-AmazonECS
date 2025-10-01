+++
title = "Sử dụng Docker Hub"
date = 2024
weight = 2
chapter = false
pre = "<b>8.2. </b>"
+++

#### Tạo repository trên Docker Hub

- Vào **Docker Hub** đã được chuẩn bị sẵn và tạo một repository trong đó
- Chọn **Create repository**

![8.2.1.png](/images/8-push-image/8.2.1.png)

- Chọn **Namespace** là account của mình
- Nhập tên repository: `fcjresbar-fe`
- Nhập mô tả: `Frontend Image of FCJ Resbar`
- Chọn public
- Kiểm tra lại và chọn **Create**

![8.2.2.png](/images/8-push-image/8.2.2.png)

- Hoàn tất tạo một **repository** trên **Docker Hub**

![8.2.3.png](/images/8-push-image/8.2.3.png)

Tương tự, chúng ta tạo repository cho backend image.

- Chọn **Namespace** là account của mình
- Nhập tên repository: `fcjresbar-be`
- Nhập mô tả: `Backend Image of FCJ Resbar`
- Chọn public
- Kiểm tra lại và chọn **Create**

![8.2.4.png](/images/8-push-image/8.2.4.png)

Kết quả

![8.2.5.png](/images/8-push-image/8.2.5.png)

#### Push frontend image và backend image lên Docker Hub

Giờ thì chúng ta đã sẵn sàng đẩy các image lên trên từng repositories.

Logout và đăng nhập vào Docker Hub. Nhờ là đăng nhập đúng tài khoản và mật khẩu của tài khoản mà bạn đã tạo các repositories ở bước vừa rồi.

![8.2.6.png](/images/8-push-image/8.2.6.png)

Thay đổi tag cho **Frontend Image** và **Backend Image**

```bash
docker image ls
```
```bash
docker tag aws-fcj-container-app-frontend tranvix0910/fcjresbar-fe
docker tag aws-fcj-container-app-backend tranvix0910/fcjresbar-be
```

```bash
docker push tranvix0910/fcjresbar-fe
docker push tranvix0910/fcjresbar-be
```

{{% notice note %}}
Nếu chúng ta không đề cập tag trong lệnh `docker tag`, thì nó sẽ tự động thêm tag `latest` vào image.
{{% /notice %}}


![8.2.7.png](/images/8-push-image/8.2.7.png)

![8.2.8.png](/images/8-push-image/8.2.8.png)


#### Kết quả

Sau khi push xong, thì chúng ta có thể thấy được các image đã được đẩy lên trên từng repository.

![8.2.9.png](/images/8-push-image/8.2.9.png)
![8.2.10.png](/images/8-push-image/8.2.10.png)
