-- ---------------------------------------------------------------------
-- I. 02 câu lệnh gồm SELECT có điều kiện trên một bảng
-- ---------------------------------------------------------------------

-- 1. Xem danh sách các nhà cung cấp đang hoạt động (Trạng thái = 1)
SELECT MaNCC, TenNCC, DienThoai, QuocGia 
FROM NHA_CUNG_CAP 
WHERE TrangThai = 1;

-- 2. Tìm các khách hàng thuộc loại 'Doanh nghiệp'
SELECT MaKH, TenKH, DiaChi, DienThoai 
FROM KHACH_HANG 
WHERE LoaiKH = 'Doanh nghiep';


-- ---------------------------------------------------------------------
-- II. 03 câu lệnh gồm SELECT có điều kiện trên hai bảng
-- ---------------------------------------------------------------------

-- 3. Liệt kê các đơn xuất hàng cùng tên khách hàng tương ứng đã giao thành công
SELECT x.MaDonXuat, k.TenKH, x.NgayGiao, x.TrangThai 
FROM DON_XUAT_HANG x 
JOIN KHACH_HANG k ON x.MaKH = k.MaKH 
WHERE x.TrangThai = 'Da giao';

-- 4. Xem chi tiết vật liệu (Tên vật liệu, số lượng) trong các đơn đặt hàng nhà cung cấp
SELECT c.MaDonNCC, v.TenNVL, c.SoLuong, c.ThanhTien 
FROM CHI_TIET_DON_NCC c 
JOIN NGUYEN_VAT_LIEU v ON c.MaNVL = v.MaNVL;

-- 5. Hiển thị thông tin vận chuyển kèm theo địa chỉ giao hàng của đơn xuất
SELECT v.NhaVanChuyen, d.DiaChiGiao, v.TrangThai 
FROM VAN_CHUYEN v 
JOIN DON_XUAT_HANG d ON v.MaDonXuat = d.MaDonXuat;


-- ---------------------------------------------------------------------
-- III. 02 câu lệnh gồm SELECT có WHERE và GROUP BY
-- ---------------------------------------------------------------------

-- 6. Tính tổng số lượng tồn của từng kho đối với các loại kho lạnh
SELECT k.TenKho, SUM(t.SoLuongTon) AS TongTonKho 
FROM TON_KHO t 
JOIN KHO k ON t.MaKho = k.MaKho 
WHERE k.LoaiKho LIKE '%lanh%' 
GROUP BY k.TenKho;

-- 7. Thống kê tổng số tiền đã đặt hàng theo từng mã nhà cung cấp
SELECT MaNCC, COUNT(MaDonNCC) AS SoDonHang, SUM(TongGiaTri) AS TongTienDat 
FROM DON_DAT_HANG_NCC 
GROUP BY MaNCC;


-- ---------------------------------------------------------------------
-- IV. 03 câu lệnh gồm SELECT có WHERE, GROUP BY và HAVING
-- ---------------------------------------------------------------------

-- 8. Liệt kê các khách hàng đã đặt từ 1 đơn xuất hàng trở lên
SELECT k.TenKH, COUNT(x.MaDonXuat) AS TongSoDon 
FROM KHACH_HANG k 
JOIN DON_XUAT_HANG x ON k.MaKH = x.MaKH 
GROUP BY k.TenKH 
HAVING COUNT(x.MaDonXuat) >= 1;

-- 9. Tìm các nguyên vật liệu có tổng số lượng nhập kho lớn hơn 500
SELECT v.TenNVL, SUM(c.SoLuong) AS TongNhap 
FROM CHI_TIET_DON_NCC c 
JOIN NGUYEN_VAT_LIEU v ON c.MaNVL = v.MaNVL 
GROUP BY v.TenNVL 
HAVING SUM(c.SoLuong) > 500;


-- ---------------------------------------------------------------------
-- VI. 02 câu lệnh gồm SELECT có WHERE, GROUP BY, HAVING và truy vấn con
-- ---------------------------------------------------------------------

-- 10. Tìm các đơn xuất hàng có giá trị lớn hơn giá trị trung bình của tất cả các đơn
SELECT MaDonXuat, MaKH, TongGiaTri 
FROM DON_XUAT_HANG 
WHERE TongGiaTri > (
    SELECT AVG(TongGiaTri) 
    FROM DON_XUAT_HANG
);

-- 11. Liệt kê các nguyên vật liệu chưa từng được thực hiện xuất kho trong năm 2023
SELECT MaNVL, TenNVL 
FROM NGUYEN_VAT_LIEU 
WHERE MaNVL NOT IN ( 
    SELECT DISTINCT c.MaNVL 
    FROM CHI_TIET_DON_XUAT c 
    JOIN DON_XUAT_HANG d ON c.MaDonXuat = d.MaDonXuat 
    WHERE YEAR(d.NgayDat) = 2023 
);


-- ---------------------------------------------------------------------
-- VIII. 02 câu lệnh UPDATE có điều kiện
-- ---------------------------------------------------------------------

-- 12. Cập nhật địa chỉ cho nhà cung cấp 'Cong ty Thep Hoa Phat'
UPDATE NHA_CUNG_CAP 
SET DiaChi = 'Ha Noi' 
WHERE TenNCC = 'Cong ty Thep Hoa Phat';

-- 13. Tăng giá mua thêm 10% cho các nguyên vật liệu có đơn vị tính là 'Thung'
UPDATE NGUYEN_VAT_LIEU 
SET GiaMua = GiaMua * 1.1 
WHERE DonViTinh = 'Thung';


-- ---------------------------------------------------------------------
-- IX. 02 câu lệnh DELETE có điều kiện
-- ---------------------------------------------------------------------

-- 14. Xóa các đơn vận chuyển có trạng thái 'Dang cho'
DELETE FROM VAN_CHUYEN 
WHERE TrangThai = 'Dang cho';

-- 15. Xóa các chi tiết đơn xuất có số lượng nhỏ hơn 2
DELETE FROM CHI_TIET_DON_XUAT 
WHERE SoLuong < 2;