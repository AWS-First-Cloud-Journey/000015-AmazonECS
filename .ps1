# Đường dẫn thư mục chứa ảnh
$folderPath = "D:\D22CQCI01N\0-WorkshopBuilder\000015-AmazonECS\static\images\9-clean-up"

# Duyệt ngược từ 18 xuống 6 để tránh ghi đè
for ($i = 18; $i -ge 6; $i--) {
    $oldName = "9.$i.png"
    $newName = "9." + ($i + 1) + ".png"

    $oldPath = Join-Path $folderPath $oldName
    $newPath = Join-Path $folderPath $newName

    if (Test-Path $oldPath) {
        # Nếu file đích đã tồn tại thì xóa trước để tránh lỗi
        if (Test-Path $newPath) {
            Remove-Item $newPath -Force
        }

        Rename-Item -Path $oldPath -NewName $newName
        Write-Host "Đã đổi tên: $oldName -> $newName"
    } else {
        Write-Host "Không tìm thấy file: $oldName"
    }
}
