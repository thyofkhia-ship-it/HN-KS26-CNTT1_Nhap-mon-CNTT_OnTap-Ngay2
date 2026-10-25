# BÀI LÀM – ÔN TẬP NGÀY 2

- **Họ tên:** Trần Mạnh Hoa
- **Lớp:** HN-KS26-CNTT1
- **Link repository:** https://github.com/accountstool/HN-KS26-CNTT1_Nhap-mon-CNTT_OnTap-Ngay2
- **Hệ điều hành (Windows/macOS):** macOS

## Bài 1. Lọc log thủ công

### Lệnh đã chạy

```shell
grep "ERROR" logs/access.log > logs/error_report.txt
cat logs/error_report.txt
```

### 2 dòng lỗi đầu tiên trong error_report.txt

```text
2025-10-18 08:17:59 [ERROR] Khong tim thay trang /lich-thi (404)
2025-10-18 08:25:55 [ERROR] Het thoi gian cho (timeout)
```

## Bài 2. Đếm bằng pipeline

### Lệnh

```shell
grep "WARNING" logs/access.log | wc -l
grep "ERROR" logs/payment.log | wc -l
```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
WARNING trong access.log: 4
ERROR trong payment.log: 3
```

## Bài 3. Chạy script auto_warning (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
bash auto_warning.sh
```

### Nội dung file logs/warning_report.txt

```text
=== CANH BAO THANH TOAN ===
2025-10-18 09:19:13 [WARNING] Cong thanh toan phan hoi cham
2025-10-18 09:28:16 [WARNING] Nhieu lan nhap sai ma OTP
2025-10-18 09:43:01 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:46:22 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:49:43 [WARNING] So du vi gan bang hoc phi
```

## Bài 4. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
echo "=== TONG HOP ACCESS LOG ===" > logs/tong_hop_ngay2.txt
grep "ERROR" logs/access.log >> logs/tong_hop_ngay2.txt
grep "WARNING" logs/payment.log | wc -l >> logs/tong_hop_ngay2.txt
```

### Nội dung file logs/tong_hop_ngay2.txt

```text
=== TONG HOP ACCESS LOG ===
2025-10-18 08:17:59 [ERROR] Khong tim thay trang /lich-thi (404)
2025-10-18 08:25:55 [ERROR] Het thoi gian cho (timeout)
2025-10-18 08:33:51 [ERROR] Ket noi may chu du lieu that bai
2025-10-18 08:37:19 [ERROR] Ket noi may chu du lieu that bai
2025-10-18 08:49:43 [ERROR] Het thoi gian cho (timeout)
2025-10-18 08:53:11 [ERROR] Het thoi gian cho (timeout)
5
```

## Bài 5. Câu hỏi ngắn

- **a)** Dấu `>` tạo file mới để ghi, nếu file đã có nội dung thì bị xoá sạch rồi mới ghi nội dung mới vào. Dấu `>>` giữ nguyên nội dung cũ và nối phần mới vào cuối file
- **b)** File sẽ mất dòng tiêu đề `=== TONG HOP ACCESS LOG ===` mà lệnh 1 vừa ghi, vì `>` của lệnh 2 xoá sạch nội dung cũ trước khi ghi vào. File còn lại chỉ có 6 dòng ERROR mà không có tiêu đề.
- **c)** Vì đường dẫn tuyệt đối gắn chặt với từng máy, máy mình là /Users/maithuha/... mà máy khác user khác, chỗ để folder cũng khác, nên viết cứng kiểu vậy vào script thì đem sang máy khác là nó báo không tìm thấy file ngay. Dùng đường dẫn tương đối logs/payment.log thì nó tính từ thư mục đang đứng, miễn là giữ nguyên cấu trúc thư mục là script chạy máy nào cũng đúng, mang đi nộp hay chia sẻ cũng không phải sửa lại đường dẫn


## Tự chấm (điền sau khi có đáp án)

- **Điểm tự chấm:** 100/100
- **Lỗi mình đã mắc và cách sửa:**
