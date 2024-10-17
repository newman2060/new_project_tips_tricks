`venv` trong Python là công cụ giúp tạo và quản lý môi trường ảo, cho phép mỗi dự án có thể sử dụng các phiên bản thư viện riêng biệt, mà không ảnh hưởng đến hệ thống toàn cục. Dưới đây là các lệnh phổ biến liên quan đến `venv`:

### 1. **Tạo môi trường ảo**
Để tạo một môi trường ảo mới:

```bash
python -m venv <tên_môi_trường_ảo>
```
Ví dụ:

```bash
python -m venv venv
```

### 2. **Kích hoạt môi trường ảo**
Sau khi tạo, bạn cần kích hoạt môi trường ảo.

- **Trên Windows**:
  ```bash
  venv\Scripts\activate
  ```

- **Trên macOS/Linux**:
  ```bash
  source venv/bin/activate
  ```

Sau khi kích hoạt, bạn sẽ thấy tên môi trường hiển thị trong terminal (ví dụ: `(venv)`).

### 3. **Hủy kích hoạt môi trường ảo**
Để thoát hoặc hủy kích hoạt môi trường ảo, chỉ cần chạy:

```bash
deactivate
```

### 4. **Cài đặt gói trong môi trường ảo**
Sau khi kích hoạt môi trường ảo, bạn có thể cài đặt các thư viện bằng `pip` mà chỉ ảnh hưởng đến môi trường ảo hiện tại:

```bash
pip install <tên_gói>
```


### 5. **Lưu các thư viện đã cài đặt**
Để lưu danh sách các thư viện hiện tại vào file `requirements.txt`:

```bash
pip freeze > requirements.txt
```

### 6. **Cài đặt từ file `requirements.txt`**
Nếu bạn có file `requirements.txt` và muốn cài đặt các thư viện từ đó vào môi trường ảo:

```bash
pip install -r requirements.txt
```

### 7. **Xóa môi trường ảo**
Chỉ cần xóa thư mục của môi trường ảo (trong ví dụ này là `venv`):

```bash
rm -rf venv
```

### 8. **Kiểm tra Python và pip trong môi trường ảo**
Sau khi kích hoạt môi trường ảo, bạn có thể kiểm tra phiên bản Python và pip:

```bash
python --version
pip --version
```

### 9. **Nâng cấp pip trong môi trường ảo**
Để nâng cấp pip lên phiên bản mới nhất:

```bash
pip install --upgrade pip
```

---

Môi trường ảo là công cụ rất hữu ích giúp bạn quản lý các thư viện theo từng dự án, đảm bảo tính ổn định và tránh xung đột giữa các phiên bản thư viện khác nhau.

--# -------------------------------------------------

Dưới đây là hướng dẫn rút gọn và sắp xếp lại các bước để tự động kích hoạt môi trường ảo (venv) trong PowerShell và VS Code/Cursor:

# Hướng dẫn tự động kích hoạt venv trong PowerShell và VS Code/Cursor

## 1. Cấu hình PowerShell Profile

1. Mở PowerShell, chạy `echo $PROFILE` để xác định vị trí file profile.
2. Mở hoặc tạo file profile, thêm đoạn mã sau:

```powershell:$PROFILE
$venvPath = $PWD
$venvName = "venv"
if (Test-Path (Join-Path $venvPath $venvName)) {
    & (Join-Path $venvPath $venvName "Scripts\Activate.ps1")
}
```

3. Lưu file và chạy `. $PROFILE` để áp dụng thay đổi.

## 2. Cấu hình VS Code/Cursor

1. Tạo/mở file `.vscode/settings.json` trong thư mục dự án.
2. Thêm cấu hình sau:

```json:.vscode/settings.json
{
    "terminal.integrated.profiles.windows": {
        "PowerShell with venv": {
            "source": "PowerShell",
            "args": ["-NoExit", "-Command", "if (Test-Path .\\venv) { .\\venv\\Scripts\\Activate.ps1 }"]
        }
    },
    "terminal.integrated.defaultProfile.windows": "PowerShell with venv"
}
```

3. Lưu file.

## 3. Cấu hình chính sách thực thi script (nếu cần)

Chạy lệnh sau trong PowerShell với quyền quản trị:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## Kết luận

Với các cấu hình trên, môi trường ảo sẽ tự động kích hoạt khi bạn mở PowerShell hoặc terminal tích hợp trong VS Code/Cursor cho dự án của mình.