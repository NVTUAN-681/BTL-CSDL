-- Thêm dữ liệu bảng DON_DAT_HANG_NCC (TrangThai varchar(10) nen viet ngan: 'Da giao', 'Dang cho'...)
INSERT INTO DON_DAT_HANG_NCC (MaDonNCC, MaNCC, NgayDat, NgayGiaoHang, TrangThai, TongGiaTri, GhiChu) VALUES
(1, 1, '2023-10-01', '2023-10-05', 'Da giao', 150000000, 'Giao som'),
(2, 2, '2023-10-02', '2023-10-06', 'Da giao', 80000000, 'Goi ky'),
(3, 3, '2023-10-05', '2023-10-10', 'Dang cho', 40000000, 'Giao gio HC'),
(4, 4, '2023-10-08', '2023-10-12', 'Da giao', 25000000, 'Khong'),
(5, 5, '2023-10-10', '2023-10-15', 'Dang cho', 175000000, 'Can than do vo'),
(6, 6, '2023-10-12', '2023-10-18', 'Da huy', 0, 'Sai gia'),
(7, 7, '2023-10-15', '2023-10-20', 'Dang cho', 60000000, 'Khong'),
(8, 8, '2023-10-18', '2023-10-25', 'Dang cho', 300000000, 'Hang nhap khau'),
(9, 10, '2023-10-20', '2023-10-22', 'Da giao', 42500000, 'Khong'),
(10, 1, '2023-10-25', '2023-10-30', 'Dang cho', 75000000, 'Giao buc 2');

-- Thêm dữ liệu bảng CHI_TIET_DON_NCC
INSERT INTO CHI_TIET_DON_NCC (MaCTDonNCC, MaDonNCC, MaNVL, SoLuong, DonGia, ThanhTien) VALUES
(1, 1, 1, 10, 15000000, 150000000),
(2, 2, 2, 5, 16000000, 80000000),
(3, 3, 3, 500, 80000, 40000000),
(4, 4, 4, 1000, 25000, 25000000),
(5, 5, 5, 500, 350000, 175000000),
(6, 6, 6, 100, 120000, 12000000),
(7, 7, 7, 400, 150000, 60000000),
(8, 8, 1, 20, 15000000, 300000000),
(9, 9, 9, 50, 850000, 42500000),
(10, 10, 2, 4, 16000000, 64000000);

-- Thêm dữ liệu bảng NHAP_KHO
INSERT INTO NHAP_KHO (MaNhapKho, MaDonNCC, MaKho, NgayNhap, NguoiNhap, GhiChu) VALUES
(1, 1, 1, '2023-10-05', 'Tran Thu A', 'Du so luong'),
(2, 2, 4, '2023-10-06', 'Le Van B', 'Thieu 1 it'),
(3, 4, 7, '2023-10-12', 'Ngo Thi C', 'Binh thuong'),
(4, 9, 8, '2023-10-22', 'Vu Van D', 'Da kiem tra'),
(5, 3, 5, '2023-10-11', 'Hoang Thi E', 'Nhap muon'),
(6, 1, 2, '2023-10-06', 'Phan Van F', 'Chuyen kho'),
(7, 2, 1, '2023-10-07', 'Dang Thi G', 'Du hang'),
(8, 5, 6, '2023-10-16', 'Bui Van H', 'Du hang'),
(9, 7, 9, '2023-10-21', 'Nguyen Thi I', 'Dung loai'),
(10, 4, 3, '2023-10-13', 'Le Thi K', 'Nhap dot 2');

-- Thêm dữ liệu bảng TON_KHO
INSERT INTO TON_KHO (MaTonKho, MaKho, MaNVl, SoLuongTon, NgayCapPhat) VALUES
(1, 1, 1, 200, '2023-10-25'),
(2, 4, 2, 150, '2023-10-25'),
(3, 5, 3, 1000, '2023-10-25'),
(4, 7, 4, 800, '2023-10-25'),
(5, 6, 5, 400, '2023-10-25'),
(6, 9, 7, 2000, '2023-10-25'),
(7, 8, 9, 100, '2023-10-25'),
(8, 2, 1, 100, '2023-10-25'),
(9, 3, 6, 500, '2023-10-25'),
(10, 10, 8, 1500, '2023-10-25');

-- Thêm dữ liệu bảng DON_XUAT_HANG
INSERT INTO DON_XUAT_HANG (MaDonXuat, MaKH, NgayDat, NgayGiao, TrangThai, TongGiaTri, DiaChiGiao) VALUES
(1, 1, '2023-11-01', '2023-11-03', 'Dang giao', 30000000, 'Quan 1 TP HCM'),
(2, 2, '2023-11-02', '2023-11-05', 'Da giao', 16000000, 'Ba Dinh Ha Noi'),
(3, 3, '2023-11-03', '2023-11-06', 'Dang cho', 4000000, 'Ninh Kieu Can Tho'),
(4, 4, '2023-11-04', '2023-11-08', 'Da huy', 0, 'Hai Chau Da Nang'),
(5, 5, '2023-11-05', '2023-11-07', 'Da giao', 850000, 'Bien Hoa Dong Nai'),
(6, 6, '2023-11-06', '2023-11-09', 'Dang cho', 1200000, 'Di An Binh Duong'),
(7, 7, '2023-11-07', '2023-11-10', 'Dang giao', 3500000, 'Quan 3 TP HCM'),
(8, 8, '2023-11-08', '2023-11-12', 'Dang cho', 15000000, 'Le Chan Hai Phong'),
(9, 9, '2023-11-09', '2023-11-14', 'Da giao', 2500000, 'Phu Vang Hue'),
(10, 10, '2023-11-10', '2023-11-12', 'Dang giao', 450000, 'Xuyen Moc Vung Tau');

-- Thêm dữ liệu bảng CHI_TIET_DON_XUAT
INSERT INTO CHI_TIET_DON_XUAT (MaCTDonXuat, MaDonXuat, MaNVL, SoLuong, DonGia, ThanhTien) VALUES
(1, 1, 1, 2, 15000000, 30000000),
(2, 2, 2, 1, 16000000, 16000000),
(3, 3, 3, 50, 80000, 4000000),
(4, 4, 4, 200, 25000, 5000000),
(5, 5, 9, 1, 850000, 850000),
(6, 6, 6, 10, 120000, 1200000),
(7, 7, 5, 10, 350000, 3500000),
(8, 8, 7, 100, 150000, 15000000),
(9, 9, 8, 10, 250000, 2500000),
(10, 10, 10, 1, 450000, 450000);

-- Thêm dữ liệu bảng XUAT_KHO
INSERT INTO XUAT_KHO (MaXuatKho, MaKho, MaDonXuat, NgayXuat, NguoiXuat, GhiChu) VALUES
(1, 1, 1, '2023-11-02', 'Nguyen Quoc A', 'Xuat som'),
(2, 2, 2, '2023-11-03', 'Tran Quoc B', 'Du hang'),
(3, 5, 3, '2023-11-04', 'Le Quoc C', 'Khong'),
(4, 8, 5, '2023-11-06', 'Phan Quoc D', 'Xuat 1 thung'),
(5, 3, 6, '2023-11-07', 'Hoang Quoc E', 'Goi ky'),
(6, 6, 7, '2023-11-08', 'Vu Quoc F', 'Can than'),
(7, 9, 8, '2023-11-09', 'Dang Quoc G', 'Xe tai lon'),
(8, 9, 9, '2023-11-10', 'Bui Quoc H', 'Khong'),
(9, 10, 10, '2023-11-11', 'Ngo Quoc I', 'Hang de vo'),
(10, 1, 7, '2023-11-08', 'Do Quoc K', 'Giao phan 2');

-- Thêm dữ liệu bảng VAN_CHUYEN
INSERT INTO VAN_CHUYEN (MaVanChuyen, MaDonXuat, MaSoVanDon, NhaVanChuyen, NgayXuatPhat, NgayDuKien, TrangThai, GhiChu) VALUES
(1, 1, 'VD001', 'Viettel Post', '2023-11-02', '2023-11-03', 'Dang giao', 'Giao nhanh'),
(2, 2, 'VD002', 'VNPost', '2023-11-03', '2023-11-05', 'Da giao', 'An toan'),
(3, 3, 'VD003', 'Giao Hang Nhanh', '2023-11-04', '2023-11-06', 'Dang cho', 'Giao tan noi'),
(4, 5, 'VD004', 'AhaMove', '2023-11-06', '2023-11-07', 'Da giao', 'Noi thanh'),
(5, 6, 'VD005', 'Giao Hang Tiet Kiem', '2023-11-07', '2023-11-09', 'Dang cho', 'Goi chong soc'),
(6, 7, 'VD006', 'Lalamove', '2023-11-08', '2023-11-10', 'Dang giao', 'Cho hang nang'),
(7, 8, 'VD007', 'Xe Tai Cong Ty', '2023-11-09', '2023-11-12', 'Dang cho', 'Di duong quoc lo'),
(8, 9, 'VD008', 'Viettel Post', '2023-11-10', '2023-11-14', 'Da giao', 'Khong'),
(9, 10, 'VD009', 'J&T Express', '2023-11-11', '2023-11-12', 'Dang giao', 'Can than'),
(10, 1, 'VD010', 'Xe Tai Cong Ty', '2023-11-02', '2023-11-03', 'Dang giao', 'Chuyen 2');