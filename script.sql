USE [TTN_QLHSGV]
GO
/****** Object:  UserDefinedFunction [dbo].[splitstring]    Script Date: 4/1/20 15:22:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[splitstring] ( @stringToSplit VARCHAR(MAX) )
RETURNS
 @returnList TABLE ([Name] [nvarchar] (500))
AS
BEGIN

 DECLARE @name NVARCHAR(255)
 DECLARE @pos INT

 WHILE CHARINDEX(',', @stringToSplit) > 0
 BEGIN
  SELECT @pos  = CHARINDEX(',', @stringToSplit)  
  SELECT @name = SUBSTRING(@stringToSplit, 1, @pos-1)

  INSERT INTO @returnList 
  SELECT @name

  SELECT @stringToSplit = SUBSTRING(@stringToSplit, @pos+1, LEN(@stringToSplit)-@pos)
 END

 INSERT INTO @returnList
 SELECT @stringToSplit

 RETURN
END
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 4/1/20 15:22:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MaLop] [varchar](10) NOT NULL,
	[TenLop] [nvarchar](50) NOT NULL,
	[MaGVCN] [varchar](10) NULL,
	[MaKH] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[XEMMALOP]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[XEMMALOP] AS
SELECT MaLop
FROM LOP
GO
/****** Object:  Table [dbo].[GIANGDAY]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIANGDAY](
	[MaGV] [varchar](10) NOT NULL,
	[MaLop] [varchar](10) NOT NULL,
	[SoTiet] [int] NULL,
	[DiaDiem] [nvarchar](50) NULL,
	[Thu] [varchar](20) NULL,
	[Tiet] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC,
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MaGV] [varchar](10) NOT NULL,
	[TenGV] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](4) NOT NULL,
	[SDT] [varchar](11) NULL,
	[ChucVu] [nvarchar](50) NOT NULL,
	[AnhDaiDien] [varbinary](max) NULL,
	[MaMon] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCSINH]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH](
	[MaHS] [varchar](10) NOT NULL,
	[TenHS] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](4) NOT NULL,
	[SDT] [varchar](11) NULL,
	[AnhDaiDien] [varbinary](max) NULL,
	[MaLop] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOA](
	[MaKhoa] [varchar](10) NOT NULL,
	[TenKhoa] [nvarchar](50) NOT NULL,
	[MaTruongKhoa] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOAHOC]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOAHOC](
	[MaKH] [varchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MaMon] [varchar](10) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[MaKhoa] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GIANGDAY] ([MaGV], [MaLop], [SoTiet], [DiaDiem], [Thu], [Tiet]) VALUES (N'GV001', N'L6A', 60, N'TÒA B,P.102', N'2,5', N'1-3,4-5')
INSERT [dbo].[GIANGDAY] ([MaGV], [MaLop], [SoTiet], [DiaDiem], [Thu], [Tiet]) VALUES (N'GV001', N'L6C', 45, N'TÒA B,P103', N'2,4', N'1-3')
INSERT [dbo].[GIANGDAY] ([MaGV], [MaLop], [SoTiet], [DiaDiem], [Thu], [Tiet]) VALUES (N'GV002', N'L6A', 60, N'TÒA B,P102', N'4,6', N'1-3,7-8')
INSERT [dbo].[GIANGDAY] ([MaGV], [MaLop], [SoTiet], [DiaDiem], [Thu], [Tiet]) VALUES (N'GV002', N'L6B', 45, N'TÒA B,P103', N'2,4', N'1-3,4')
INSERT [dbo].[GIANGDAY] ([MaGV], [MaLop], [SoTiet], [DiaDiem], [Thu], [Tiet]) VALUES (N'GV004', N'L6A', 30, N'TÒA B,P102', N'5', N'3-5')
INSERT [dbo].[GIANGDAY] ([MaGV], [MaLop], [SoTiet], [DiaDiem], [Thu], [Tiet]) VALUES (N'GV004', N'L6C', 45, N'TÒA B,P103', N'2,4', N'3-5,8-9')
INSERT [dbo].[GIANGDAY] ([MaGV], [MaLop], [SoTiet], [DiaDiem], [Thu], [Tiet]) VALUES (N'GV005', N'L6B', 60, N'TÒA B,P201', N'3,6', N'3-5,1-2')
INSERT [dbo].[GIANGDAY] ([MaGV], [MaLop], [SoTiet], [DiaDiem], [Thu], [Tiet]) VALUES (N'GV005', N'L7A', 60, N'TÒA B,P205', N'2,5', N'7-9,4-5')
INSERT [dbo].[GIANGDAY] ([MaGV], [MaLop], [SoTiet], [DiaDiem], [Thu], [Tiet]) VALUES (N'GV006', N'L7A', 45, N'TÒA B,P204', N'6', N'3-5')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [DiaChi], [GioiTinh], [SDT], [ChucVu], [AnhDaiDien], [MaMon]) VALUES (N'GV001', N'NGUYỄN HOÀNG NAM', N'43 Trần Duy Hưng, Trung Hoà, Cầu Giấy, Hà Nội', N'NAM', N'0987346782', N'GIẢNG VIÊN', NULL, N'TOAN')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [DiaChi], [GioiTinh], [SDT], [ChucVu], [AnhDaiDien], [MaMon]) VALUES (N'GV002', N'HOÀNG HẢI YẾN', N'133 TRẦN HƯNG ĐẠO , HOÀNG MAI, Hà Nội', N'NỮ', N'0354674345', N'GIẢNG VIÊN', NULL, N'VAN')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [DiaChi], [GioiTinh], [SDT], [ChucVu], [AnhDaiDien], [MaMon]) VALUES (N'GV003', N'BÙI HOÀNG VIỆT', N'43 Trần Duy Hưng, Trung Hoà, Cầu Giấy, Hà Nội', N'NAM', N'0936643737', N'PHÓ HIỆU TRƯỞNG', NULL, N'TOAN')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [DiaChi], [GioiTinh], [SDT], [ChucVu], [AnhDaiDien], [MaMon]) VALUES (N'GV004', N'NGÔ XUÂN KHIÊM', N'43 Trần Duy Hưng, Trung Hoà, Cầu Giấy, Hà Nội', N'NAM', N'0387620987', N'GIẢNG VIÊN', NULL, N'HOA')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [DiaChi], [GioiTinh], [SDT], [ChucVu], [AnhDaiDien], [MaMon]) VALUES (N'GV005', N'BÙI XUÂN HUẤN', N'Phan Văn Trường, Dịch Vọng Hậu, Cầu Giấy, Hà Nội', N'NAM', N'0387620987', N'GIẢNG VIÊN', NULL, N'MYTHUAT')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [DiaChi], [GioiTinh], [SDT], [ChucVu], [AnhDaiDien], [MaMon]) VALUES (N'GV006', N'NGÔ THI THANH', N'15, Phạm Hùng, Phường Mỹ Đình 2, Quận Nam Từ Liêm, Hà Nội', N'NAM', N'0387620987', N'GIẢNG VIÊN', NULL, N'NGOAINGU')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [DiaChi], [GioiTinh], [SDT], [ChucVu], [AnhDaiDien], [MaMon]) VALUES (N'GV007', N'HOÀNG THÙY LINH', N'Số 6 Ngõ 370 Nguyễn Văn Cừ, Ngọc Lâm, Long Biên, Hà Nội', N'NỮ', N'0912475731', N'GIẢNG VIÊN', NULL, N'VAN')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [DiaChi], [GioiTinh], [SDT], [ChucVu], [AnhDaiDien], [MaMon]) VALUES (N'GV008', N'VÕ TRUNG TÚ', N'12 Hàng Chĩnh, Hàng Buồm, Hoàn Kiếm, Hà Nội', N'NAM', N'0828476737', N'GIẢNG VIÊN', NULL, N'SINH')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [MaTruongKhoa]) VALUES (N'NANGKHIEU', N'NĂNG KHIẾU', NULL)
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [MaTruongKhoa]) VALUES (N'TUNHIEN', N'TỰ NHIÊN', NULL)
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [MaTruongKhoa]) VALUES (N'XAHOI', N'XÃ HỘI', NULL)
INSERT [dbo].[KHOAHOC] ([MaKH], [TenKH]) VALUES (N'KH20142018', N'KHÓA HỌC 2014-2018')
INSERT [dbo].[KHOAHOC] ([MaKH], [TenKH]) VALUES (N'KH20152019', N'KHÓA HỌC 2015-2019')
INSERT [dbo].[KHOAHOC] ([MaKH], [TenKH]) VALUES (N'KH20162020', N'KHÓA HỌC 2016-2020')
INSERT [dbo].[KHOAHOC] ([MaKH], [TenKH]) VALUES (N'KH20172021', N'KHÓA HỌC 2017-2021')
INSERT [dbo].[KHOAHOC] ([MaKH], [TenKH]) VALUES (N'KH20182022', N'KHÓA HỌC 2018-2022')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaGVCN], [MaKH]) VALUES (N'L6A', N'6A', N'GV001', N'KH20182022')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaGVCN], [MaKH]) VALUES (N'L6B', N'6B', N'GV002', N'KH20182022')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaGVCN], [MaKH]) VALUES (N'L6C', N'6C', N'GV003', N'KH20182022')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaGVCN], [MaKH]) VALUES (N'L7A', N'7A', N'GV005', N'KH20172021')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaGVCN], [MaKH]) VALUES (N'L7B', N'7B', N'GV006', N'KH20172021')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaGVCN], [MaKH]) VALUES (N'L7C', N'7C', N'GV007', N'KH20172021')
INSERT [dbo].[MONHOC] ([MaMon], [TenMon], [MaKhoa]) VALUES (N'AMNHAC', N'ÂM NHẠC', N'NANGKHIEU')
INSERT [dbo].[MONHOC] ([MaMon], [TenMon], [MaKhoa]) VALUES (N'CONGNGHE', N'CÔNG NGHỆ', N'TUNHIEN')
INSERT [dbo].[MONHOC] ([MaMon], [TenMon], [MaKhoa]) VALUES (N'DIA', N'ĐỊA LÍ', N'XAHOI')
INSERT [dbo].[MONHOC] ([MaMon], [TenMon], [MaKhoa]) VALUES (N'GDCD', N'GDCD', N'XAHOI')
INSERT [dbo].[MONHOC] ([MaMon], [TenMon], [MaKhoa]) VALUES (N'HOA', N'HÓA HỌC', N'TUNHIEN')
INSERT [dbo].[MONHOC] ([MaMon], [TenMon], [MaKhoa]) VALUES (N'LI', N'VẬT LÍ', N'TUNHIEN')
INSERT [dbo].[MONHOC] ([MaMon], [TenMon], [MaKhoa]) VALUES (N'MYTHUAT', N'MỸ THUẬT', N'NANGKHIEU')
INSERT [dbo].[MONHOC] ([MaMon], [TenMon], [MaKhoa]) VALUES (N'NGOAINGU', N'TIẾNG ANH', N'XAHOI')
INSERT [dbo].[MONHOC] ([MaMon], [TenMon], [MaKhoa]) VALUES (N'SINH', N'SINH HỌC', N'TUNHIEN')
INSERT [dbo].[MONHOC] ([MaMon], [TenMon], [MaKhoa]) VALUES (N'SU', N'LỊCH SỬ', N'XAHOI')
INSERT [dbo].[MONHOC] ([MaMon], [TenMon], [MaKhoa]) VALUES (N'THEDUC', N'THỂ DỤC', N'NANGKHIEU')
INSERT [dbo].[MONHOC] ([MaMon], [TenMon], [MaKhoa]) VALUES (N'TIN', N'TIN HỌC', N'TUNHIEN')
INSERT [dbo].[MONHOC] ([MaMon], [TenMon], [MaKhoa]) VALUES (N'TOAN', N'TOÁN HỌC', N'TUNHIEN')
INSERT [dbo].[MONHOC] ([MaMon], [TenMon], [MaKhoa]) VALUES (N'VAN', N'NGỮ VĂN', N'XAHOI')
ALTER TABLE [dbo].[GIANGDAY]  WITH CHECK ADD FOREIGN KEY([MaGV])
REFERENCES [dbo].[GIAOVIEN] ([MaGV])
GO
ALTER TABLE [dbo].[GIANGDAY]  WITH CHECK ADD FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOP] ([MaLop])
GO
ALTER TABLE [dbo].[GIAOVIEN]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[MONHOC] ([MaMon])
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOP] ([MaLop])
GO
ALTER TABLE [dbo].[KHOA]  WITH CHECK ADD FOREIGN KEY([MaTruongKhoa])
REFERENCES [dbo].[GIAOVIEN] ([MaGV])
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD FOREIGN KEY([MaGVCN])
REFERENCES [dbo].[GIAOVIEN] ([MaGV])
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHOAHOC] ([MaKH])
GO
ALTER TABLE [dbo].[MONHOC]  WITH CHECK ADD FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[KHOA] ([MaKhoa])
GO
/****** Object:  StoredProcedure [dbo].[DELETEKHOA]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETEKHOA](@MAKHOA VARCHAR(10))AS
BEGIN

	DELETE KHOA 
	WHERE MaKhoa = @MAKHOA

END


-- THAO TÁC VS MÔN HỌC
GO
/****** Object:  StoredProcedure [dbo].[DELETELOPHOC]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETELOPHOC](@MALOP VARCHAR(10))AS
BEGIN
	DELETE LOP
	WHERE MaLop = @MALOP
END


-- THAO TAC VS BANG HOC SINH 

GO
/****** Object:  StoredProcedure [dbo].[DELETEMONHOC]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETEMONHOC](@MAMONHOC VARCHAR(10))AS
BEGIN
	DELETE MONHOC
	WHERE MaMon = @MAMONHOC
END



/*
THÊM HỌC SINH VÀ GIÁO VIÊN BẮT BUỘC PHẢI THÊM TAY TRƯỚC DO VƯỚNG ẢNH ĐẠI DIỆN DÙ ĐỂ NULL NHƯNG NÓ VẪN KO NHẬN
K
*/

-- THAO TAC VS BANG GIAO VIEN
/*
GV001		NGUYỄN HOÀNG NAM		43 Trần Duy Hưng, Trung Hoà, Cầu Giấy, Hà Nội			NAM			0987346782		GIẢNG VIÊN			(ẢNH ĐẠI DIỆN ĐỂ KO)	TOAN

GV002		HOÀNG HẢI YẾN			133 TRẦN HƯNG ĐẠO , HOÀNG MAI, Hà Nội					NỮ			0354674345		GIẢNG VIÊN			(ẢNH ĐẠI DIỆN ĐỂ KO)	NGUVAN

GV003		BÙI HOÀNG VIỆT			43 Trần Duy Hưng, Trung Hoà, Cầu Giấy, Hà Nội			NAM			0936643737		PHÓ HIỆU TRƯỞNG		(ẢNH ĐẠI DIỆN ĐỂ KO)	TOAN

GV004		NGÔ XUÂN KHIÊM			43 Trần Duy Hưng, Trung Hoà, Cầu Giấy, Hà Nội			NAM			0387620987		GIẢNG VIÊN			(ẢNH ĐẠI DIỆN ĐỂ KO)	HOA

*/



-- THAO TÁC VỚI LỚP HỌC 
GO
/****** Object:  StoredProcedure [dbo].[FilterInfo]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[FilterInfo](@MAGV VARCHAR(10), @MALOP VARCHAR(10),@THU VARCHAR(20),@TIET VARCHAR(20))as
begin
	 IF(@MALOP = 'Tất cả' and @MAGV='Tất cả' and ((@THU = '' or @THU = 'None') and (@TIET = '' or @TIET = 'None')))
		begin
			select * from GIANGDAY
		end

	if(@MALOP = 'Tất cả' and @MAGV='Tất cả'and @TIET = 'Sáng' and ( @THU='' or @THU='None'))
		begin
			select * from GIANGDAY
			where Tiet LIKE '%1%' or Tiet Like '%2%' or Tiet LIKE '%3%' or Tiet LIKE '%4%' or Tiet LIKE '%5%' or Tiet LIKE '%6%'
		end

	if(@MALOP = 'Tất cả' and @MAGV='Tất cả'and @TIET = 'Chiều' and ( @THU='' or @THU='None'))
		begin
			select * from GIANGDAY
			where Tiet LIKE '%7%' or Tiet Like '%8%' or Tiet LIKE '%9%' or Tiet LIKE '%10%' or Tiet LIKE '%11%' or Tiet LIKE '%12%'
		end

	if(@MALOP = 'Tất cả' and @MAGV='Tất cả'and @TIET = 'Sáng')
		begin
			select * from GIANGDAY
			where (Tiet LIKE '%1%' or Tiet Like '%2%' or Tiet LIKE '%3%' or Tiet LIKE '%4%' or Tiet LIKE '%5%' or Tiet LIKE '%6%')
			and (Thu LIKE CAST(('%'+@THU+'%') AS varchar(20)))
		end

	if(@MALOP = 'Tất cả' and @MAGV='Tất cả'and @TIET = 'Chiều' )
		begin
			select * from GIANGDAY
			where (Tiet LIKE '%7%' or Tiet Like '%8%' or Tiet LIKE '%9%' or Tiet LIKE '%10%' or Tiet LIKE '%11%' or Tiet LIKE '%12%')
			and (Thu LIKE CAST(('%'+@THU+'%') AS varchar(20)))
		end

	 if(@MALOP = 'Tất cả' and @MAGV='Tất cả' and (@TIET= '' or @TIET= 'None') )
		begin
			select * from GIANGDAY
			where (Thu LIKE CAST(('%'+@THU+'%') AS varchar(20)))
		end

	 if(@MALOP = 'Tất cả' and @MAGV='Tất cả' and (@THU= '' or @THU= 'None') )
		begin
			select * from GIANGDAY
			where (Thu LIKE CAST(('%'+@THU+'%') AS varchar(20)))
		end

	if(@MALOP = 'Tất cả' and @TIET = 'Sáng' and (@THU!=''or @THU!='None'))
		begin
			select * from GIANGDAY
			where (Tiet LIKE '%1%' or Tiet Like '%2%' or Tiet LIKE '%3%' or Tiet LIKE '%4%' or Tiet LIKE '%5%' or Tiet LIKE '%6%')
			and (Thu LIKE CAST(('%'+@THU+'%') AS varchar(20))) and MaGV = @MAGV
		end

	 if(@MALOP = 'Tất cả' and @TIET = 'Chiều' and (@THU!=''or @THU!='None'))
		begin
			select * from GIANGDAY
			where (Tiet LIKE '%7%' or Tiet Like '%8%' or Tiet LIKE '%9%' or Tiet LIKE '%10%' or Tiet LIKE '%11%' or Tiet LIKE '%12%')
			and (Thu LIKE CAST(('%'+@THU+'%') AS varchar(20))) and MaGV = @MAGV
		end

	if(@MALOP = 'Tất cả' and @TIET = 'Sáng'  and (@THU=''or @THU='None'))
		begin
			select * from GIANGDAY
			where (Tiet LIKE '%1%' or Tiet Like '%2%' or Tiet LIKE '%3%' or Tiet LIKE '%4%' or Tiet LIKE '%5%' or Tiet LIKE '%6%')
			and MaGV = @MAGV
		end

	if(@MALOP = 'Tất cả' and @TIET = 'Chiều'  and (@THU=''or @THU='None'))
		begin
			select * from GIANGDAY
			where (Tiet LIKE '%7%' or Tiet Like '%8%' or Tiet LIKE '%9%' or Tiet LIKE '%10%' or Tiet LIKE '%11%' or Tiet LIKE '%12%')
			 and MaGV = @MAGV
		end

	if(@MAGV = 'Tất cả' and @TIET = 'Sáng'and (@THU!=''or @THU!='None'))
		begin
			select * from GIANGDAY
			where (Tiet LIKE '%1%' or Tiet Like '%2%' or Tiet LIKE '%3%' or Tiet LIKE '%4%' or Tiet LIKE '%5%' or Tiet LIKE '%6%')
			and (Thu LIKE CAST(('%'+@THU+'%') AS varchar(20))) and MaLop=@MALOP
		end

	if(@MAGV = 'Tất cả' and @TIET = 'Chiều' and (@THU!=''or @THU!='None'))
		begin
			select * from GIANGDAY
			where (Tiet LIKE '%7%' or Tiet Like '%8%' or Tiet LIKE '%9%' or Tiet LIKE '%10%' or Tiet LIKE '%11%' or Tiet LIKE '%12%')
			and (Thu LIKE CAST(('%'+@THU+'%') AS varchar(20))) and MaLop=@MALOP
		end

	 if(@MAGV = 'Tất cả' and @TIET = 'Sáng' and (@THU = 'None' or @THU=''))
		begin
			select * from GIANGDAY
			where (Tiet LIKE '%1%' or Tiet Like '%2%' or Tiet LIKE '%3%' or Tiet LIKE '%4%' or Tiet LIKE '%5%' or Tiet LIKE '%6%')
			and MaLop=@MALOP
		end

	if(@MAGV = 'Tất cả' and @TIET = 'Chiều' and (@THU='None'or @THU=''))
		begin
			select * from GIANGDAY
			where (Tiet LIKE '%7%' or Tiet Like '%8%' or Tiet LIKE '%9%' or Tiet LIKE '%10%' or Tiet LIKE '%11%' or Tiet LIKE '%12%')
			 and MaLop=@MALOP
		end

	 if(@MALOP = 'Tất cả' and ((@TIET = 'None' and @THU = 'None')or (@TIET = '' and @THU = '')) )
		begin
			select * from GIANGDAY
			where  MaGV = @MAGV
		end

	if(@MAGV = 'Tất cả'  and ((@TIET = 'None' and @THU = 'None')or (@TIET = '' and @THU = '')) )
		begin
			select * from GIANGDAY
			where  MaLop=@MALOP
		end

	if(@TIET = 'Sáng')
		begin
			select * from GIANGDAY
			where (Tiet LIKE '%1%' or Tiet Like '%2%' or Tiet LIKE '%3%' or Tiet LIKE '%4%' or Tiet LIKE '%5%' or Tiet LIKE '%6%')
			and (Thu LIKE CAST(('%'+@THU+'%') AS varchar(20))) and MaLop=@MALOP and MaGV = @MAGV
		end
	else 
		begin
			select * from GIANGDAY
			where (Tiet LIKE '%7%' or Tiet Like '%8%' or Tiet LIKE '%9%' or Tiet LIKE '%10%' or Tiet LIKE '%11%' or Tiet LIKE '%12%')
			and (Thu LIKE CAST(('%'+@THU+'%') AS varchar(20))) and MaLop=@MALOP and MaGV = @MAGV
		end
end
GO
/****** Object:  StoredProcedure [dbo].[INSERTGIANGDAY]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTGIANGDAY](@MAGV VARCHAR(10),@MALOP VARCHAR(10) ,@SOTIET INT , @DIADIEM NVARCHAR(50) ,@THU VARCHAR(20),@TIET VARCHAR(20) )AS
BEGIN

	INSERT INTO GIANGDAY(MaGV,MaLop,SoTiet,DiaDiem,Thu,Tiet)
	VALUES(@MAGV , @MALOP , @SOTIET , @DIADIEM , @THU , @TIET )

END
GO
/****** Object:  StoredProcedure [dbo].[INSERTHOCSINH]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTHOCSINH](@MAHS VARCHAR(10), @TENHS NVARCHAR(50) ,@DIACHI NVARCHAR(100), @GIOITINH NVARCHAR(4),@SDT VARCHAR(11), @ANHDAIDIEN VARBINARY(MAX),@MALOP VARCHAR(10))AS
BEGIN

	INSERT INTO HOCSINH(MaHS , TenHS, DiaChi, GioiTinh,SDT,AnhDaiDien, MaLop)
	VALUES (@MAHS , @TENHS, @DIACHI, @GIOITINH, @SDT, @ANHDAIDIEN, @MALOP)

END
/*
	'HS001',	N'HÀ NGỌC ÁNH' ,		N'154 Ngõ 173 Hoàng Hoa Thám, Ngọc Hồ, Ba Đình, Hà Nội',	'NỮ',		'','',			'L6A'
	'HS002',	N'NGUYỄN TRUNG BÌNH' ,	N'173  Phố Hàng Khay, Hoàn Kiếm, Hà Nội',					'NAM',		'','',			'L6A'
	'HS003',	N'BÙI NHƯ LẠC',			N'54 Hoàng Như Tiếp , Long Biên , Hà Nội',					'NỮ',		'','',			'L6A'

*/





-- thao tác với giảng dạy
/**
*/

GO
/****** Object:  StoredProcedure [dbo].[INSERTKHOAHOC]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- THAP TÁC VỚI KHÓA HỌC
CREATE PROC [dbo].[INSERTKHOAHOC](@MAKHOAHOC VARCHAR(10), @TENKHOAHOC NVARCHAR(50))AS
BEGIN

	INSERT INTO KHOAHOC(MaKH,TenKH)
	VALUES(@MAKHOAHOC,@TENKHOAHOC)

END

GO
/****** Object:  StoredProcedure [dbo].[INSERTLOPHOC]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTLOPHOC](@MALOP VARCHAR(10), @TENLOP NVARCHAR(50), @MAGVCN VARCHAR(10), @MAKH VARCHAR(10))AS
BEGIN

	INSERT INTO LOP(MaLop , TenLop , MaGVCN, MaKH)
	VALUES(@MALOP , @TENLOP, @MAGVCN , @MAKH)

END

GO
/****** Object:  StoredProcedure [dbo].[INSERTMONHOC]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTMONHOC](@MAMONHOC VARCHAR(10),@TENMONHOC NVARCHAR(50),@MAKHOA VARCHAR(10))AS
BEGIN
	INSERT INTO MONHOC(MaMon,TenMon ,MaKhoa)
	VALUES(@MAMONHOC ,@TENMONHOC , @MAKHOA)
END


GO
/****** Object:  StoredProcedure [dbo].[UPDATEGIANGDAY]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEGIANGDAY](@MAGV VARCHAR(10),@MAGV1 VARCHAR(10), @MALOP VARCHAR(10) ,@MALOP1 VARCHAR(10),@SOTIET INT , @DIADIEM NVARCHAR(50) ,@THU VARCHAR(20),@TIET VARCHAR(20))AS
BEGIN
	
		UPDATE GIANGDAY
		SET MaLop = @MALOP1 ,MaGV = @MAGV1, SoTiet = @SOTIET , DiaDiem = @DIADIEM , Thu = @THU , Tiet = @TIET 
		WHERE MaGV = @MAGV and MaLop = @MALOP

END
GO
/****** Object:  StoredProcedure [dbo].[UPDATEKHOA]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEKHOA](@MAKHOA VARCHAR(10), @TENKHOA NVARCHAR(50), @MATRUONGKHOA VARCHAR(10))AS
BEGIN

	UPDATE KHOA
	SET TenKhoa = @TENKHOA ,MaTruongKhoa = @MATRUONGKHOA 
	WHERE MaKhoa = @MAKHOA
END



GO
/****** Object:  StoredProcedure [dbo].[UPDATEKHOAHOC]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEKHOAHOC](@MAKHOAHOC VARCHAR(10) ,  @TENKHOAHOC NVARCHAR(50))AS
BEGIN
	UPDATE KHOAHOC
	SET TenKH = @TENKHOAHOC
	WHERE MaKH = @MAKHOAHOC
END







/**
PHẦN KHOA NÀY TÔI NGHĨ RA KHÁ ÍT NÊN AE THÊM TAY
	TUNHIEN		TỰ NHIÊN
	
	XAHOI		XÃ HỘI
	
	NANGKHIEU	NĂNG KHIẾU

*/

-- THAO TÁC VỚI KHOA CỦA BỘ MÔN
/*
-- HÀM NÀY VẪN TẠO RA PHỤC VỤ VIẾT BÊN C#
GO 
CREATE PROC INSERTKHOA(@MAKHOA VARCHAR(10), @TENKHOA NVARCHAR(50), @MATRUONGKHOA VARCHAR(10))AS
BEGIN

	INSERT INTO KHOA(MaKhoa , TenKhoa , MaTruongKhoa)
	VALUES(@MAKHOA , @TENKHOA , @MATRUONGKHOA)

END
*/

GO
/****** Object:  StoredProcedure [dbo].[UPDATELOPHOC]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATELOPHOC](@MALOP VARCHAR(10), @TENLOP NVARCHAR(50), @MAGVCN VARCHAR(10), @MAKH VARCHAR(10))AS
BEGIN
	
	UPDATE LOP
	SET  TenLop=@TENLOP , MaGVCN =@MAGVCN , MaKH = @MAKH 
	WHERE MaLop=@MALOP

END



GO
/****** Object:  StoredProcedure [dbo].[UPDATEMONHOC]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEMONHOC](@MAMONHOC VARCHAR(10),@TENMONHOC NVARCHAR(50),@MAKHOA VARCHAR(10))as
BEGIN
	UPDATE MONHOC
	SET TenMon = @TENMONHOC , MaKhoa = @MAKHOA
	WHERE MaMon = @MAMONHOC
END


GO
/****** Object:  StoredProcedure [dbo].[XEMLICHGIANGDAY]    Script Date: 4/1/20 15:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XEMLICHGIANGDAY] AS
BEGIN
	select * from GIANGDAY
END
GO
