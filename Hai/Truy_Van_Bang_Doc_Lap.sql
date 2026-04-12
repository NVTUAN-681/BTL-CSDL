--Truy Vấn Nhà Cung Cấp
SELECT [MaNCC]
      ,[TenNCC]
      ,[DiaChi]
      ,[DienThoai]
      ,[Email]
      ,[QuocGia]
      ,[TrangThai]
  FROM [master].[dbo].[NHA_CUNG_CAP]

--Truy Vấn Nguyên Vật Liệu
SELECT [MaNVL]
      ,[TenNVL]
      ,[DonViTinh]
      ,[GiaMua]
      ,[SoLuongTon]
      ,[MucTonToiThieu]
      ,[MoTa]
  FROM [master].[dbo].[NGUYEN_VAT_LIEU]

--Truy Vấn Kho
SELECT [MaKho]
      ,[TenKho]
      ,[DiaChi]
      ,[LoaiKho]
      ,[SucChua]
      ,[NguoiPhuTrach]
  FROM [master].[dbo].[KHO]

--truy vấn Khách Hàng
SELECT [MaKH]
      ,[TenKH]
      ,[DiaChi]
      ,[DienThoai]
      ,[Email]
      ,[LoaiKH]
  FROM [master].[dbo].[KHACH_HANG]
