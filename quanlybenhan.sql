USE [DACN]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/4/2022 11:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nchar](50) NULL,
	[MatKhau] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BacSi]    Script Date: 4/4/2022 11:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BacSi](
	[MaBacSi] [int] IDENTITY(1,1) NOT NULL,
	[HinhAnh] [nvarchar](250) NULL,
	[TaiKhoan] [nchar](50) NULL,
	[MatKhau] [nchar](50) NULL,
	[HoVaTen] [nvarchar](200) NULL,
	[MaChuyenKhoa] [int] NULL,
	[NgaySinh] [nchar](10) NULL,
	[MaGioiTinh] [int] NULL,
	[SDT] [int] NULL,
	[Email] [nvarchar](500) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBacSi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BenhAn]    Script Date: 4/4/2022 11:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenhAn](
	[MaBenhAn] [int] IDENTITY(1,1) NOT NULL,
	[MaBacSi] [int] NULL,
	[MaBenhNhan] [int] NULL,
	[NgayKham] [datetime] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[ChuanDoan] [nvarchar](max) NULL,
	[DonThuoc] [nvarchar](max) NULL,
	[fileBenhAn] [nvarchar](max) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBenhAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BenhNhan]    Script Date: 4/4/2022 11:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenhNhan](
	[MaBenhNhan] [int] IDENTITY(1,1) NOT NULL,
	[HinhAnh] [nvarchar](250) NULL,
	[TaiKhoan] [nchar](50) NULL,
	[MatKhau] [nchar](50) NULL,
	[HoVaTen] [nvarchar](200) NULL,
	[NgaySinh] [nchar](10) NULL,
	[MaGioiTinh] [int] NULL,
	[SDT] [int] NULL,
	[Email] [nvarchar](500) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBenhNhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenKhoa]    Script Date: 4/4/2022 11:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenKhoa](
	[MaChuyenKhoa] [int] IDENTITY(1,1) NOT NULL,
	[TenChuyenKhoa] [nvarchar](500) NULL,
	[MoTa] [nvarchar](250) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuyenKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 4/4/2022 11:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiTinh](
	[MaGioiTinh] [int] IDENTITY(1,1) NOT NULL,
	[TenGioiTinh] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGioiTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lich]    Script Date: 4/4/2022 11:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lich](
	[MaLich] [int] IDENTITY(1,1) NOT NULL,
	[MaBacSi] [int] NULL,
	[Ngay] [datetime] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichHen]    Script Date: 4/4/2022 11:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichHen](
	[MaLichHen] [int] IDENTITY(1,1) NOT NULL,
	[MaLich] [int] NULL,
	[MaBacSi] [int] NULL,
	[MaBenhNhan] [int] NULL,
	[NoiDung] [nvarchar](250) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLichHen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 4/4/2022 11:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[MaLienHe] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[ChuDe] [nvarchar](250) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLienHe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([MaTaiKhoan], [TaiKhoan], [MatKhau]) VALUES (1, N'admin                                             ', N'123456                                            ')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[BacSi] ON 

INSERT [dbo].[BacSi] ([MaBacSi], [HinhAnh], [TaiKhoan], [MatKhau], [HoVaTen], [MaChuyenKhoa], [NgaySinh], [MaGioiTinh], [SDT], [Email], [TrangThai]) VALUES (1, N'background.jpg', N'bacsi1                                            ', N'123                                               ', N'truongggg', 2, N'10/09/2020', 1, 135456481, N'truong1@gmail.com', 1)
INSERT [dbo].[BacSi] ([MaBacSi], [HinhAnh], [TaiKhoan], [MatKhau], [HoVaTen], [MaChuyenKhoa], [NgaySinh], [MaGioiTinh], [SDT], [Email], [TrangThai]) VALUES (2, N'Bacsi.jpg', N'bacsi2                                            ', N'123                                               ', N'Nguyễn Văn Lãnh', 1, N'11/11/1991', 1, 947862132, N'lanhnv@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[BacSi] OFF
GO
SET IDENTITY_INSERT [dbo].[BenhAn] ON 

INSERT [dbo].[BenhAn] ([MaBenhAn], [MaBacSi], [MaBenhNhan], [NgayKham], [NoiDung], [ChuanDoan], [DonThuoc], [fileBenhAn], [TrangThai]) VALUES (1, 1, 1, CAST(N'2021-12-12T19:00:00.000' AS DateTime), N'Kham tai', N'Tai sưng', N'acb', N'Capture.PNG', 1)
INSERT [dbo].[BenhAn] ([MaBenhAn], [MaBacSi], [MaBenhNhan], [NgayKham], [NoiDung], [ChuanDoan], [DonThuoc], [fileBenhAn], [TrangThai]) VALUES (2, 1, 2, CAST(N'2021-12-13T20:53:00.000' AS DateTime), N'Khám tai', N'Tai sưng to', N'abc', N'cuocthi.jpg', 1)
INSERT [dbo].[BenhAn] ([MaBenhAn], [MaBacSi], [MaBenhNhan], [NgayKham], [NoiDung], [ChuanDoan], [DonThuoc], [fileBenhAn], [TrangThai]) VALUES (3, 2, 2, CAST(N'2021-12-19T07:29:00.000' AS DateTime), N'Khám mắt', N'Mắt cận', N'abc', NULL, 1)
SET IDENTITY_INSERT [dbo].[BenhAn] OFF
GO
SET IDENTITY_INSERT [dbo].[BenhNhan] ON 

INSERT [dbo].[BenhNhan] ([MaBenhNhan], [HinhAnh], [TaiKhoan], [MatKhau], [HoVaTen], [NgaySinh], [MaGioiTinh], [SDT], [Email], [TrangThai]) VALUES (1, N'Ảnh chứng minh MT.jpg', N'benhnhan1                                         ', N'123                                               ', N'Vien Truong', N'03/09/2000', 1, 984213554, N'truong@gmail.com', 2)
INSERT [dbo].[BenhNhan] ([MaBenhNhan], [HinhAnh], [TaiKhoan], [MatKhau], [HoVaTen], [NgaySinh], [MaGioiTinh], [SDT], [Email], [TrangThai]) VALUES (2, N'benhnhan.jfif', N'benhnhan2                                         ', N'123                                               ', N'Nguyễn Thị Minh', N'10/10/1999', 2, 987654321, N'minhnt1999@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[BenhNhan] OFF
GO
SET IDENTITY_INSERT [dbo].[ChuyenKhoa] ON 

INSERT [dbo].[ChuyenKhoa] ([MaChuyenKhoa], [TenChuyenKhoa], [MoTa], [TrangThai]) VALUES (1, N'Khoa Tim Mạch', NULL, 1)
INSERT [dbo].[ChuyenKhoa] ([MaChuyenKhoa], [TenChuyenKhoa], [MoTa], [TrangThai]) VALUES (2, N'Khoa Tai Mũi Họng', NULL, 1)
INSERT [dbo].[ChuyenKhoa] ([MaChuyenKhoa], [TenChuyenKhoa], [MoTa], [TrangThai]) VALUES (3, N'Khoa Ung Bướu', NULL, 1)
INSERT [dbo].[ChuyenKhoa] ([MaChuyenKhoa], [TenChuyenKhoa], [MoTa], [TrangThai]) VALUES (4, N'Khoa Nhi', NULL, 1)
INSERT [dbo].[ChuyenKhoa] ([MaChuyenKhoa], [TenChuyenKhoa], [MoTa], [TrangThai]) VALUES (5, N'Khoa Nội', NULL, 1)
INSERT [dbo].[ChuyenKhoa] ([MaChuyenKhoa], [TenChuyenKhoa], [MoTa], [TrangThai]) VALUES (6, N'Khoa Ngoại', NULL, 1)
SET IDENTITY_INSERT [dbo].[ChuyenKhoa] OFF
GO
SET IDENTITY_INSERT [dbo].[GioiTinh] ON 

INSERT [dbo].[GioiTinh] ([MaGioiTinh], [TenGioiTinh]) VALUES (1, N'Nam')
INSERT [dbo].[GioiTinh] ([MaGioiTinh], [TenGioiTinh]) VALUES (2, N'Nữ')
SET IDENTITY_INSERT [dbo].[GioiTinh] OFF
GO
SET IDENTITY_INSERT [dbo].[Lich] ON 

INSERT [dbo].[Lich] ([MaLich], [MaBacSi], [Ngay], [TrangThai]) VALUES (1, 1, NULL, 3)
INSERT [dbo].[Lich] ([MaLich], [MaBacSi], [Ngay], [TrangThai]) VALUES (2, 1, CAST(N'2021-12-12T19:00:00.000' AS DateTime), 3)
INSERT [dbo].[Lich] ([MaLich], [MaBacSi], [Ngay], [TrangThai]) VALUES (3, 1, CAST(N'2021-12-13T20:53:00.000' AS DateTime), 3)
INSERT [dbo].[Lich] ([MaLich], [MaBacSi], [Ngay], [TrangThai]) VALUES (4, 2, CAST(N'2021-12-19T07:29:00.000' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[Lich] OFF
GO
SET IDENTITY_INSERT [dbo].[LichHen] ON 

INSERT [dbo].[LichHen] ([MaLichHen], [MaLich], [MaBacSi], [MaBenhNhan], [NoiDung], [TrangThai]) VALUES (1, 2, 1, 1, N'Khám tai', 3)
INSERT [dbo].[LichHen] ([MaLichHen], [MaLich], [MaBacSi], [MaBenhNhan], [NoiDung], [TrangThai]) VALUES (2, 3, 1, 2, N'Khám tai', 3)
INSERT [dbo].[LichHen] ([MaLichHen], [MaLich], [MaBacSi], [MaBenhNhan], [NoiDung], [TrangThai]) VALUES (3, 4, 2, 2, N'Khám bệnh', 3)
SET IDENTITY_INSERT [dbo].[LichHen] OFF
GO
SET IDENTITY_INSERT [dbo].[LienHe] ON 

INSERT [dbo].[LienHe] ([MaLienHe], [Ten], [Email], [ChuDe], [NoiDung], [TrangThai]) VALUES (1, N'Truong', N'truong@gmail.com', N'Khám bệnh', N'Kham tai', 0)
INSERT [dbo].[LienHe] ([MaLienHe], [Ten], [Email], [ChuDe], [NoiDung], [TrangThai]) VALUES (2, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[LienHe] ([MaLienHe], [Ten], [Email], [ChuDe], [NoiDung], [TrangThai]) VALUES (3, N'Viên Trường', N'truong1@gmail.com', N'Khám bệnh', N'Khám mắt', 0)
INSERT [dbo].[LienHe] ([MaLienHe], [Ten], [Email], [ChuDe], [NoiDung], [TrangThai]) VALUES (4, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[LienHe] ([MaLienHe], [Ten], [Email], [ChuDe], [NoiDung], [TrangThai]) VALUES (5, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[LienHe] ([MaLienHe], [Ten], [Email], [ChuDe], [NoiDung], [TrangThai]) VALUES (6, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[LienHe] ([MaLienHe], [Ten], [Email], [ChuDe], [NoiDung], [TrangThai]) VALUES (7, N'aaa', N'truong12345@gmail.com', N'Khám bệnh', N'khám da', 0)
SET IDENTITY_INSERT [dbo].[LienHe] OFF
GO
ALTER TABLE [dbo].[BacSi]  WITH CHECK ADD  CONSTRAINT [fk_BacSi_MaChuyenKhoa] FOREIGN KEY([MaChuyenKhoa])
REFERENCES [dbo].[ChuyenKhoa] ([MaChuyenKhoa])
GO
ALTER TABLE [dbo].[BacSi] CHECK CONSTRAINT [fk_BacSi_MaChuyenKhoa]
GO
ALTER TABLE [dbo].[BacSi]  WITH CHECK ADD  CONSTRAINT [fk_BacSi_MaGioiTinh] FOREIGN KEY([MaGioiTinh])
REFERENCES [dbo].[GioiTinh] ([MaGioiTinh])
GO
ALTER TABLE [dbo].[BacSi] CHECK CONSTRAINT [fk_BacSi_MaGioiTinh]
GO
ALTER TABLE [dbo].[BenhAn]  WITH CHECK ADD  CONSTRAINT [fk_BenhAn_MaBacSi] FOREIGN KEY([MaBacSi])
REFERENCES [dbo].[BacSi] ([MaBacSi])
GO
ALTER TABLE [dbo].[BenhAn] CHECK CONSTRAINT [fk_BenhAn_MaBacSi]
GO
ALTER TABLE [dbo].[BenhAn]  WITH CHECK ADD  CONSTRAINT [fk_BenhAn_MaBenhNhan] FOREIGN KEY([MaBenhNhan])
REFERENCES [dbo].[BenhNhan] ([MaBenhNhan])
GO
ALTER TABLE [dbo].[BenhAn] CHECK CONSTRAINT [fk_BenhAn_MaBenhNhan]
GO
ALTER TABLE [dbo].[BenhNhan]  WITH CHECK ADD  CONSTRAINT [fk_BenhNhan_MaGioiTinh] FOREIGN KEY([MaGioiTinh])
REFERENCES [dbo].[GioiTinh] ([MaGioiTinh])
GO
ALTER TABLE [dbo].[BenhNhan] CHECK CONSTRAINT [fk_BenhNhan_MaGioiTinh]
GO
ALTER TABLE [dbo].[Lich]  WITH CHECK ADD  CONSTRAINT [fk_MaBacSi] FOREIGN KEY([MaBacSi])
REFERENCES [dbo].[BacSi] ([MaBacSi])
GO
ALTER TABLE [dbo].[Lich] CHECK CONSTRAINT [fk_MaBacSi]
GO
ALTER TABLE [dbo].[LichHen]  WITH CHECK ADD  CONSTRAINT [fk_LichHen_MaBacSi] FOREIGN KEY([MaBacSi])
REFERENCES [dbo].[BacSi] ([MaBacSi])
GO
ALTER TABLE [dbo].[LichHen] CHECK CONSTRAINT [fk_LichHen_MaBacSi]
GO
ALTER TABLE [dbo].[LichHen]  WITH CHECK ADD  CONSTRAINT [fk_LichHen_MaBenhNhan] FOREIGN KEY([MaBenhNhan])
REFERENCES [dbo].[BenhNhan] ([MaBenhNhan])
GO
ALTER TABLE [dbo].[LichHen] CHECK CONSTRAINT [fk_LichHen_MaBenhNhan]
GO
ALTER TABLE [dbo].[LichHen]  WITH CHECK ADD  CONSTRAINT [fk_LichHen_MaLich] FOREIGN KEY([MaLich])
REFERENCES [dbo].[Lich] ([MaLich])
GO
ALTER TABLE [dbo].[LichHen] CHECK CONSTRAINT [fk_LichHen_MaLich]
GO
