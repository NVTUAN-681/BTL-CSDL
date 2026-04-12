--Truy vấn Đơn Xuất Hàng
SELECT [MaDonXuat]
      ,[MaKH]
      ,[NgayDat]
      ,[NgayGiao]
      ,[TrangThai]
      ,[TongGiaTri]
      ,[DiaChiGiao]
  FROM [master].[dbo].[DON_XUAT_HANG]

--Truy vấn Đơn đặt Hàng Nhà Cung Cấp
SELECT [MaDonNCC]
      ,[MaNCC]
      ,[NgayDat]
      ,[NgayGiaoHang]
      ,[TrangThai]
      ,[TongGiaTri]
      ,[GhiChu]
  FROM [master].[dbo].[DON_DAT_HANG_NCC]

--Truy vấn Chi tiết Đơn Xuất
SELECT [MaCTDonXuat]
      ,[MaDonXuat]
      ,[MaNVL]
      ,[SoLuong]
      ,[DonGia]
      ,[ThanhTien]
  FROM [master].[dbo].[CHI_TIET_DON_XUAT]

--Truy Vấn Chi tiết Đơn Nhà cung cấp
SELECT [MaCTDonNCC]
      ,[MaDonNCC]
      ,[MaNVL]
      ,[SoLuong]
      ,[DonGia]
      ,[ThanhTien]
  FROM [master].[dbo].[CHI_TIET_DON_NCC]

--Truy Vấn Nhập Kho
SELECT [MaNhapKho]
      ,[MaDonNCC]
      ,[MaKho]
      ,[NgayNhap]
      ,[NguoiNhap]
      ,[GhiChu]
  FROM [master].[dbo].[NHAP_KHO]

--Truy vấn Tồn Kho
SELECT [MaTonKho]
      ,[MaKho]
      ,[MaNVl]
      ,[SoLuongTon]
      ,[NgayCapPhat]
  FROM [master].[dbo].[TON_KHO]

--Truy Vấn Vận Chuyển
SELECT [MaVanChuyen]
      ,[MaDonXuat]
      ,[MaSoVanDon]
      ,[NhaVanChuyen]
      ,[NgayXuatPhat]
      ,[NgayDuKien]
      ,[TrangThai]
      ,[GhiChu]
  FROM [master].[dbo].[VAN_CHUYEN]

--Truy vấn Xuat Kho
SELECT [MaXuatKho]
      ,[MaKho]
      ,[MaDonXuat]
      ,[NgayXuat]
      ,[NguoiXuat]
      ,[GhiChu]
  FROM [master].[dbo].[XUAT_KHO]
