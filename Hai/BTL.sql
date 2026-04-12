-- CÁC BẢNG ĐỘC LẬP KHÔNG BỊ RÀNG BUỘC THAM CHIẾU BỞI CÁC BẢNG KHÁC --

CREATE TABLE NHA_CUNG_CAP(
	MaNCC int not null,
	TenNCC varchar(255) not null,
	DiaChi varchar(255) null,
	DienThoai varchar(15) not null,
	Email varchar(100) null,
	QuocGia varchar(100) null,
	TrangThai bit null,

	CONSTRAINT Khoachinh_NHA_CUNG_CAP Primary Key (MaNCC)
);

CREATE TABLE NGUYEN_VAT_LIEU(
	MaNVL int not null,
	TenNVL varchar(20) not null,
	DonViTinh varchar(10) not null,
	GiaMua decimal(18, 2) not null,
	SoLuongTon int not null,
	MucTonToiThieu int not null,
	MoTa varchar(10) null,
	
	CONSTRAINT KhoaChinh_NGUYEN_VAT_LIEU Primary Key (MaNVL),
	CONSTRAINT KiemTra_Giamua_NGUYEN_VAT_LIEU Check(GiaMua > 0)
);

CREATE TABLE KHO(
	MaKho int not null,
	TenKho varchar(255) not null,
	DiaChi varchar(255) not null,
	LoaiKho varchar(15) not null,
	SucChua float not null,
	NguoiPhuTrach varchar(100) null,

	CONSTRAINT KhoaChinh_KHO Primary Key (MaKho)
);

CREATE TABLE KHACH_HANG(
	MaKH int not null,
	TenKH varchar(255) null,
	DiaChi varchar(255) not null,
	DienThoai varchar(15) not null,
	Email varchar(255) null,
	LoaiKH varchar(50) null,

	CONSTRAINT KhoaChinh_KH Primary Key (MaKH)
);

-- CÁC BẢNG PHỤ THUỘC VÀO CÁC BẢNG KHÁC --

CREATE TABLE DON_DAT_HANG_NCC(
	MaDonNCC int not null,
	MaNCC int not null,
	NgayDat date not null,
	NgayGiaoHang date null,
	TrangThai varchar(10) null,
	TongGiaTri decimal(18, 2) not null,
	GhiChu varchar(255) null,

	CONSTRAINT KhoaChinh_DON_DAT_HANG_NCC Primary Key (MaDonNCC),
	CONSTRAINT KhoaNgoai_DON_DAT_HANG__MA_NHA_CUNG_CAP Foreign Key (MaNCC) References NHA_CUNG_CAP (MaNCC)
);

CREATE TABLE CHI_TIET_DON_NCC(
	MaCTDonNCC int not null,
	MaDonNCC int not null,
	MaNVL int not null,
	SoLuong int null,
	DonGia decimal(18, 2) not null, 
	ThanhTien decimal(18, 2) not null,

	CONSTRAINT KhoaChinh_CHI_TIET_DON_NCC Primary Key (MaCTDonNCC),
	CONSTRAINT KiemTra_SoLuong_NHA_CUNG_CAP Check(SoLuong > 0),
	CONSTRAINT KhoaNgoai_CHI_TIET_DON_DAT_HANG__MA_DON_NHA_CUNG_CAP Foreign Key (MaDonNCC) References DON_DAT_HANG_NCC (MaDonNCC),
	CONSTRAINT KhoaNgoai_CHI_TIET_DON_HANG__NGUYEN_VAT_LIEU Foreign Key (MaNVL) References NGUYEN_VAT_LIEU (MaNVL)
);

CREATE TABLE NHAP_KHO(
	MaNhapKho int not null,
	MaDonNCC int not null,
	MaKho int not null,
	NgayNhap date not null,
	NguoiNhap varchar(255) not null,
	GhiChu varchar(255) null,

	CONSTRAINT KhoaChinh_NHAP_KHO primary Key (MaNhapKho),
	CONSTRAINT KhoaNgoai_NHAP_KHO__MA_DON_NHA_CUNG_CAP Foreign Key (MaDonNCC) References DON_DAT_HANG_NCC (MaDonNCC),
	CONSTRAINT KhoaNgoai_NHPA_KHO__KHO Foreign Key (MaKho) References KHO (MaKho)
);

CREATE TABLE TON_KHO(
	MaTonKho int not null,
	MaKho int not null,
	MaNVl int not null,
	SoLuongTon int not null,
	NgayCapPhat date not null,

	CONSTRAINT KhoaChinh_TON_KHO Primary Key (MaTonKho),
	CONSTRAINT KiemTra_SoLuongTon Check(SoLuongTon >= 0),
	CONSTRAINT KhoaNgoai_TON_KHO__KHO Foreign Key (MaKHo) References KHO (MaKho),
	CONSTRAINT KhoaNgoai_TON_KHO__NGUYEN_VAT_LIEU Foreign Key (MaNVL) References NGUYEN_VAT_LIEU (maNVL)
);

CREATE TABLE DON_XUAT_HANG(
	MaDonXuat int not null,
	MaKH int not null,
	NgayDat date not null,
	NgayGiao date null,
	TrangThai varchar(15) null,
	TongGiaTri decimal(18, 2) not null,
	DiaChiGiao varchar(255) not null,

	CONSTRAINT KhoaChinh_DON_XUAT_HANG Primary Key (MaDonXuat),
	CONSTRAINT KhoaNgoai_DON_XUAT_HANG__KHACH_HANG Foreign Key (MaKH) References KHACH_HANG (MaKH)
);

CREATE TABLE CHI_TIET_DON_XUAT(
	MaCTDonXuat int not null,
	MaDonXuat int not null,
	MaNVL int not null,
	SoLuong int not null,
	DonGia decimal(18, 2) not null,
	ThanhTien decimal(18,2) not null,

	CONSTRAINT KhoaChinh_CHI_TIET_DON_XUAT Primary Key (MaCTDonXuat),
	CONSTRAINT KiemTra_SoLuong Check(SoLuong >= 0),
	CONSTRAINT KhoaNgoai_CHI_TIET_DON_XUAT__DON_XUAT_HANG Foreign Key (MaDonXuat) References DON_XUAT_HANG (MaDonXuat),
	CONSTRAINT KhoaNgoai_CHI_TIET_DON_XUAT__NGUYEN_VAT_LIEU Foreign Key (MaNVL) References NGUYEN_VAT_LIEU (MaNVl)
);

CREATE TABLE XUAT_KHO(
	MaXuatKho int not null,
	MaKho int not null,
	MaDonXuat int not null,
	NgayXuat date not null,
	NguoiXuat varchar(255) not null,
	GhiChu varchar(255) null,

	CONSTRAINT KhoaChinh_XUAT_KHO Primary Key (MaXuatKho),
	CONSTRAINT KhoaNgoai_XUAT_KHO__KHO Foreign Key (MaKho) References KHO (MaKho),
	CONSTRAINT KhoaNgoai_XUAT_KHO__DON_XUAT_HANG Foreign Key (MaDonXuat) References DON_XUAT_HANG (MaDonXuat)
);

CREATE TABLE VAN_CHUYEN(
	MaVanChuyen int not null,
	MaDonXuat int not null,
	MaSoVanDon varchar(255) not null,
	NhaVanChuyen varchar(255) not null,
	NgayXuatPhat date null,
	NgayDuKien date null,
	TrangThai varchar(15) not null,
	GhiChu varchar(255) null,

	CONSTRAINT KhoaChinh_VAN_CHUYEN Primary Key (MaVanChuyen),
	CONSTRAINT KhoaNgoai_VAN_CHUYEN__DON_XUAT_HANG Foreign Key (MaDonXuat) References DON_XUAT_HANG (MaDonXuat)
);