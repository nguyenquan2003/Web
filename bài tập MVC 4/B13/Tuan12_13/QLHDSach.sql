USE [master]
GO
/****** Object:  Database [QLDonHangSach]    Script Date: 04/11/2021 1:57:30 PM ******/
CREATE DATABASE [QLDonHangSach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLDonHangSach', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\QLDonHangSach.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLDonHangSach_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\QLDonHangSach_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLDonHangSach] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLDonHangSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLDonHangSach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLDonHangSach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLDonHangSach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLDonHangSach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLDonHangSach] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLDonHangSach] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLDonHangSach] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLDonHangSach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLDonHangSach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLDonHangSach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLDonHangSach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLDonHangSach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLDonHangSach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLDonHangSach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLDonHangSach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLDonHangSach] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLDonHangSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLDonHangSach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLDonHangSach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLDonHangSach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLDonHangSach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLDonHangSach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLDonHangSach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLDonHangSach] SET RECOVERY FULL 
GO
ALTER DATABASE [QLDonHangSach] SET  MULTI_USER 
GO
ALTER DATABASE [QLDonHangSach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLDonHangSach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLDonHangSach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLDonHangSach] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLDonHangSach', N'ON'
GO
USE [QLDonHangSach]
GO
/****** Object:  Table [dbo].[tbl_ChiTiet]    Script Date: 04/11/2021 1:57:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTiet](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_tbl_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_HoaDon]    Script Date: 04/11/2021 1:57:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[NgayHoaDon] [date] NULL,
	[MaKH] [int] NULL,
	[NgayGiao] [date] NULL,
	[NgayThanhToan] [date] NULL,
 CONSTRAINT [PK_tbl_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_KhachHang]    Script Date: 04/11/2021 1:57:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KhachHang](
	[MaKhachHang] [int] NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_SanPham]    Script Date: 04/11/2021 1:57:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SanPham](
	[MaSanPham] [int] NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[DonGia] [numeric](18, 0) NULL,
	[HinhAnh] [nvarchar](100) NULL,
	[MoTa] [nvarchar](100) NULL,
	[SoLuongTon] [int] NULL,
 CONSTRAINT [PK_tbl_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tbl_ChiTiet] ([MaHD], [MaSP], [SoLuong]) VALUES (3, 1, 1)
INSERT [dbo].[tbl_ChiTiet] ([MaHD], [MaSP], [SoLuong]) VALUES (3, 6, 2)
INSERT [dbo].[tbl_ChiTiet] ([MaHD], [MaSP], [SoLuong]) VALUES (3, 8, 1)
INSERT [dbo].[tbl_ChiTiet] ([MaHD], [MaSP], [SoLuong]) VALUES (4, 2, 1)
INSERT [dbo].[tbl_ChiTiet] ([MaHD], [MaSP], [SoLuong]) VALUES (4, 3, 3)
INSERT [dbo].[tbl_ChiTiet] ([MaHD], [MaSP], [SoLuong]) VALUES (4, 4, 2)
INSERT [dbo].[tbl_ChiTiet] ([MaHD], [MaSP], [SoLuong]) VALUES (4, 7, 4)
INSERT [dbo].[tbl_ChiTiet] ([MaHD], [MaSP], [SoLuong]) VALUES (5, 3, 1)
INSERT [dbo].[tbl_ChiTiet] ([MaHD], [MaSP], [SoLuong]) VALUES (5, 8, 1)
INSERT [dbo].[tbl_ChiTiet] ([MaHD], [MaSP], [SoLuong]) VALUES (5, 10, 2)
INSERT [dbo].[tbl_ChiTiet] ([MaHD], [MaSP], [SoLuong]) VALUES (6, 2, 2)
INSERT [dbo].[tbl_ChiTiet] ([MaHD], [MaSP], [SoLuong]) VALUES (6, 8, 1)
INSERT [dbo].[tbl_ChiTiet] ([MaHD], [MaSP], [SoLuong]) VALUES (6, 10, 3)
SET IDENTITY_INSERT [dbo].[tbl_HoaDon] ON 

INSERT [dbo].[tbl_HoaDon] ([MaHoaDon], [NgayHoaDon], [MaKH], [NgayGiao], [NgayThanhToan]) VALUES (3, CAST(0xC3410B00 AS Date), 3, CAST(0xC5410B00 AS Date), NULL)
INSERT [dbo].[tbl_HoaDon] ([MaHoaDon], [NgayHoaDon], [MaKH], [NgayGiao], [NgayThanhToan]) VALUES (4, CAST(0xC3410B00 AS Date), 1, CAST(0xC5410B00 AS Date), CAST(0xC4410B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHoaDon], [NgayHoaDon], [MaKH], [NgayGiao], [NgayThanhToan]) VALUES (5, CAST(0xC3410B00 AS Date), 2, CAST(0xDF410B00 AS Date), NULL)
INSERT [dbo].[tbl_HoaDon] ([MaHoaDon], [NgayHoaDon], [MaKH], [NgayGiao], [NgayThanhToan]) VALUES (6, CAST(0xC3410B00 AS Date), 2, CAST(0xC3410B00 AS Date), CAST(0xC4410B00 AS Date))
SET IDENTITY_INSERT [dbo].[tbl_HoaDon] OFF
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai], [MatKhau]) VALUES (1, N'An', N'Tân Phú', N'0909123123', N'123')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai], [MatKhau]) VALUES (2, N'Lan', N'Bình Tân', N'0909235235', N'123')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai], [MatKhau]) VALUES (3, N'Vân', N'Tân Bình', N'0978634346', N'123')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (1, N'Lẽ Nào Em Không Biết ', CAST(64200 AS Numeric(18, 0)), N'leNaoEmKhongBiet.jpg', N'Tiết kiệm: 40% (42.800 ₫) 
<br> Giá thị trường: 107.000 ₫ ', 50)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (2, N'Đạo tình', CAST(77000 AS Numeric(18, 0)), N'DaoTinh.jpg', N'Tiết kiệm: 35% (42.000 ₫) <br/>
Giá thị trường: 119.000 ₫ ', 4)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (3, N'Em là nhà', CAST(58800 AS Numeric(18, 0)), N'EmLaNha.jpg', N'Tiết kiệm: 40% (39.200 ₫) 
Giá thị trường: 98.000 ₫ ', 7)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (4, N'Yêu', CAST(52200 AS Numeric(18, 0)), N'Yeu.jpg', N'Tiết kiệm: 40% (34.800 ₫) 
Giá thị trường: 87.000 ₫ ', 5)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (5, N'Tuổi trẻ đáng giá bao nhiêu', CAST(51000 AS Numeric(18, 0)), N'tuoitredanggiabaonhieu.jpg', N'Tiết kiệm: 27% (19.000 ₫) 
Giá thị trường: 70.000 ₫ ', 0)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (6, N'Khu vườn ngôn từ', CAST(71250 AS Numeric(18, 0)), N'KhuvuonNgonTu.jpg', N'Tiết kiệm: 25% (23.750 ₫) 
Giá thị trường: 95.000 ₫ ', 12)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (7, N'Kỳ án ánh trăng', CAST(115500 AS Numeric(18, 0)), N'KyAnANhTrang.jpg', N'Tiết kiệm: 30% (49.500 ₫) 
Giá thị trường: 165.000 ₫ ', 6)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (8, N'Người truyền ký ức', CAST(49640 AS Numeric(18, 0)), N'NGuoiTruyenKysUc.jpg', N'Tiết kiệm: 27% (18.360 ₫) 
Giá thị trường: 68.000 ₫ ', 4)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (9, N'NGười đầu tư thông minh', CAST(113150 AS Numeric(18, 0)), N'NhaDauTuThongMinh.jpg', N'Tiết kiệm: 27% (41.850 ₫) 
Giá thị trường: 155.000 ₫ ', 0)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (10, N'Cuộc sống không giới hạn', CAST(74000 AS Numeric(18, 0)), N'CuocSongKhongGioiHan.jpg', N'Tiết kiệm: 24% (24.000 ₫) 
Giá thị trường: 98.000 ₫ ', 7)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (11, N'Dấn thân', CAST(64400 AS Numeric(18, 0)), N'DanThan.jpg', N'Tiết kiệm: 30% (27.600 ₫) 
Giá thị trường: 92.000 ₫ ', 0)
ALTER TABLE [dbo].[tbl_ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTiet_tbl_HoaDon1] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tbl_HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[tbl_ChiTiet] CHECK CONSTRAINT [FK_tbl_ChiTiet_tbl_HoaDon1]
GO
ALTER TABLE [dbo].[tbl_ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTiet_tbl_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tbl_SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[tbl_ChiTiet] CHECK CONSTRAINT [FK_tbl_ChiTiet_tbl_SanPham]
GO
ALTER TABLE [dbo].[tbl_ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTiet_tbl_SanPham1] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tbl_SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[tbl_ChiTiet] CHECK CONSTRAINT [FK_tbl_ChiTiet_tbl_SanPham1]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tbl_KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_KhachHang]
GO
USE [master]
GO
ALTER DATABASE [QLDonHangSach] SET  READ_WRITE 
GO
