-- Thêm dữ liệu bảng NHA_CUNG_CAP (TrangThai bit: 1 là hoat dong, 0 la ngung)
INSERT INTO NHA_CUNG_CAP (MaNCC, TenNCC, DiaChi, DienThoai, Email, QuocGia, TrangThai) VALUES
(1, 'Cong ty Thep Hoa Phat', 'Hung Yen', '0901234567', 'contact@hoaphat.vn', 'Viet Nam', 1),
(2, 'Tap doan Ton Hoa Sen', 'Binh Duong', '0912345678', 'info@hoasen.vn', 'Viet Nam', 1),
(3, 'Xi mang Ha Tien', 'TP HCM', '0923456789', 'sales@hatien.vn', 'Viet Nam', 1),
(4, 'Nhua Binh Minh', 'Dong Nai', '0934567890', 'hotline@binhminh.vn', 'Viet Nam', 1),
(5, 'Go An Cuong', 'Binh Duong', '0945678901', 'support@ancuong.vn', 'Viet Nam', 1),
(6, 'Thep Pomina', 'Ba Ria', '0956789012', 'info@pomina.vn', 'Viet Nam', 1),
(7, 'Gach Dong Tam', 'Long An', '0967890123', 'contact@dongtam.vn', 'Viet Nam', 1),
(8, 'Global Steel Corp', 'Seoul', '+821012345', 'sales@globalsteel.kr', 'Han Quoc', 1),
(9, 'China Build Mat', 'Guangzhou', '+861234567', 'info@chinabuild.cn', 'Trung Quoc', 0),
(10, 'Son Nippon', 'Ha Noi', '0978901234', 'info@nippon.vn', 'Viet Nam', 1);

-- Thêm dữ liệu bảng NGUYEN_VAT_LIEU (MoTa varchar(10) nen viet rat ngan)
INSERT INTO NGUYEN_VAT_LIEU (MaNVL, TenNVL, DonViTinh, GiaMua, SoLuongTon, MucTonToiThieu, MoTa) VALUES
(1, 'Thep cuon', 'Tan', 15000000, 500, 50, 'Loai 1'),
(2, 'Thep ong', 'Tan', 16000000, 300, 30, 'Loai 1'),
(3, 'Xi mang PC40', 'Bao', 80000, 2000, 200, 'Moi'),
(4, 'Nhua PVC', 'Kg', 25000, 1000, 100, 'Mau trang'),
(5, 'Go MDF', 'Tam', 350000, 800, 100, 'Chong am'),
(6, 'Gach men', 'Thung', 120000, 1500, 150, 'Op tuong'),
(7, 'Cat san lap', 'Khoi', 150000, 5000, 500, 'To'),
(8, 'Da 1x2', 'Khoi', 250000, 3000, 300, 'Xay dung'),
(9, 'Son nuoc', 'Thung', 850000, 400, 40, 'Mau xanh'),
(10, 'Kinh cuong luc', 'M2', 450000, 200, 20, 'Day 10mm');

-- Thêm dữ liệu bảng KHO
INSERT INTO KHO (MaKho, TenKho, DiaChi, LoaiKho, SucChua, NguoiPhuTrach) VALUES
(1, 'Kho Tong Mien Nam', 'Binh Duong', 'Kho tong', 10000, 'Nguyen Van A'),
(2, 'Kho Tong Mien Bac', 'Hung Yen', 'Kho tong', 8000, 'Tran Thi B'),
(3, 'Kho Vat Tu Q7', 'Quan 7 TP HCM', 'Kho le', 2000, 'Le Van C'),
(4, 'Kho Thep', 'Dong Nai', 'Kho lanh', 5000, 'Pham Thi D'),
(5, 'Kho Xi Mang', 'Long An', 'Kho ngoai', 3000, 'Hoang Van E'),
(6, 'Kho Go', 'Binh Duong', 'Kho kin', 4000, 'Vu Thi F'),
(7, 'Kho Nhua', 'Dong Nai', 'Kho kin', 2500, 'Ngo Van G'),
(8, 'Kho Son', 'Ha Noi', 'Kho lanh', 1500, 'Bui Thi H'),
(9, 'Kho Da Cat', 'Bien Hoa', 'Kho mo', 6000, 'Dang Van I'),
(10, 'Kho Trung Chuyen', 'Da Nang', 'Kho le', 3500, 'Do Thi K');

-- Thêm dữ liệu bảng KHACH_HANG
INSERT INTO KHACH_HANG (MaKH, TenKH, DiaChi, DienThoai, Email, LoaiKH) VALUES
(1, 'Cong ty Xay Dung A', 'TP HCM', '0911111111', 'xda@gmail.com', 'Doanh nghiep'),
(2, 'Cong ty Xay Dung B', 'Ha Noi', '0922222222', 'xdb@gmail.com', 'Doanh nghiep'),
(3, 'Dai ly VLXD Phat Dat', 'Can Tho', '0933333333', 'phatdat@gmail.com', 'Dai ly'),
(4, 'Dai ly VLXD Thanh Cong', 'Da Nang', '0944444444', 'thanhcong@gmail.com', 'Dai ly'),
(5, 'Nguyen Van X', 'Dong Nai', '0955555555', 'xnguyen@gmail.com', 'Ca nhan'),
(6, 'Tran Thi Y', 'Binh Duong', '0966666666', 'ytran@gmail.com', 'Ca nhan'),
(7, 'Cong ty Kien Truc Z', 'TP HCM', '0977777777', 'ktz@gmail.com', 'Doanh nghiep'),
(8, 'Nha thau thi cong M', 'Hai Phong', '0988888888', 'nthaum@gmail.com', 'Doanh nghiep'),
(9, 'Dai ly VLXD Mien Trung', 'Hue', '0999999999', 'dlmt@gmail.com', 'Dai ly'),
(10, 'Le Van N', 'Vung Tau', '0900000000', 'nle@gmail.com', 'Ca nhan');