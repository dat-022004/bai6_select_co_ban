# bai6_select_co_ban
bài tập 6: của sinh viên Đặng Đình Đạt K225480106003
Bài tập 6: Hệ quản trị CSDL
Chủ đề: Câu lệnh Select
Yêu cầu bài tập: 
Cho file sv_tnut.sql (1.6MB)
1. Hãy nêu các bước để import được dữ liệu trong sv_tnut.sql vào sql server của em
2. dữ liệu đầu vào là tên của sv; sđt; ngày, tháng, năm sinh của sinh viên (của sv đang làm bài tập này)
3. nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?
4. nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
5. nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?
6. nhập sql để tìm xem có những sv nào trùng tên với em?
7. nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.
8. nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.
9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.
10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV (TRÌNH BÀY QUÁ TRÌNH SUY NGHĨ VÀ GIẢI NHỮNG VỨNG MẮC)

DEADLINE: 23H59:59 NGÀY 25/4/2025  

Ghi chú: Giải thích tại sao lại có SQL như vậy.  
# BÀI LÀM  
# Ảnh 1:  
Tạo 1 Database có tên là sv_tnut và chọn nơi mình muốn lưu.  
![1](https://github.com/user-attachments/assets/dcc21ac0-14ea-44e7-892f-d5b068b8af1e)  

# Ảnh 2+3:  
1. Các bước import dữ liệu sv_tnut.sql vào SQL Server  
Bước 1: Vào menu File > Open > File… và mở file sv_tnut.sql  
![2](https://github.com/user-attachments/assets/423f4dbf-3514-4050-af4b-9055a8f7ef57)  

![3](https://github.com/user-attachments/assets/515b04d0-331e-4db6-a904-a934d1dc4344)  

# Ảnh 4:  
Bước 2: Chọn đúng database SV_TNUT ở dropdown trên SSMS.  
![4](https://github.com/user-attachments/assets/6f8e3982-6a14-4160-9c34-c2aff21b41c4)  

# Ảnh 5:  
Bước 3: Nhấn nút Execute (F5) để chạy toàn bộ script.  
![5](https://github.com/user-attachments/assets/2a621475-502a-4a97-9460-966202e6a0ca)  

# Ảnh 6  
Bước 4: Kiểm tra xem dữ liệu và0 các bảng đã được tạo thành công chưa.  
![6](https://github.com/user-attachments/assets/880b8152-d00c-4521-9012-50c6fe80fe99)  

# Ảnh 7:  
Câu lệnh select truy vấn sinh viên trùng ngày/tháng/năm sinh với 06/02/2004     
![7](https://github.com/user-attachments/assets/581d1d4d-15cf-4508-8c0e-58091e7d68cf)  

# Ảnh 8:  
Câu lệnh select truy vấn sinh viên trùng ngày và tháng sinh với 6/2  
![8](https://github.com/user-attachments/assets/6fe6448d-870d-4603-90b2-c60310d0df9c)  

# Ảnh 9:  
Câu lệnh select truy vấn sinh viên trùng tháng và năm sinh với 2/2004  
![9](https://github.com/user-attachments/assets/d4450fea-87a5-42cd-b3d8-cf47aabde7f4)  

# Ảnh 10:  
Câu lệnh select truy vấn sinh viên trùng tên với Đạt  
![10](https://github.com/user-attachments/assets/8475b519-5a96-4c1d-989a-ad9ca09d49d9)  

# Ảnh 11:  
Câu lệnh select truy vấn sinh viên trùng họ và tên đệm với Đặng Đình  
![11](https://github.com/user-attachments/assets/56d16543-f08e-423b-a6c3-6b085592651a)  

# Ảnh 12:  
Câu lệnh select truy vấn sinh viên có số điện thoại sai khác đúng 1 chữ số so với 092124974  
![12](https://github.com/user-attachments/assets/31ddbba0-566f-4c64-8822-a86c1eee0957)  

# Ảnh 13:  
Câu lệnh select truy vấn Liệt kê sinh viên ngành Kỹ thuật Máy tính, sắp xếp theo tên và họ đệm (tiếng Việt)  
![13](https://github.com/user-attachments/assets/04749986-aa88-4f29-a607-ae7843c50767)  

# Ảnh 14:  
Câu lệnh select truy vấn liệt kê sinh viên NỮ ngành KMT (ước lượng theo tên nữ phổ biến không chính xác 100% vì không có cột giới tính)  
![14](https://github.com/user-attachments/assets/4543dbec-bb4a-46dd-b8f0-c320e6d2ecd1)  
















