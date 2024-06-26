USE [master]
GO
/****** Object:  Database [HastaneProje]    Script Date: 21.02.2021 00:03:54 ******/
CREATE DATABASE [HastaneProje]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HastaneProje', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\HastaneProje.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HastaneProje_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\HastaneProje_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HastaneProje] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HastaneProje].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HastaneProje] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HastaneProje] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HastaneProje] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HastaneProje] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HastaneProje] SET ARITHABORT OFF 
GO
ALTER DATABASE [HastaneProje] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HastaneProje] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HastaneProje] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HastaneProje] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HastaneProje] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HastaneProje] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HastaneProje] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HastaneProje] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HastaneProje] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HastaneProje] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HastaneProje] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HastaneProje] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HastaneProje] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HastaneProje] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HastaneProje] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HastaneProje] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HastaneProje] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HastaneProje] SET RECOVERY FULL 
GO
ALTER DATABASE [HastaneProje] SET  MULTI_USER 
GO
ALTER DATABASE [HastaneProje] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HastaneProje] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HastaneProje] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HastaneProje] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HastaneProje] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HastaneProje] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HastaneProje', N'ON'
GO
ALTER DATABASE [HastaneProje] SET QUERY_STORE = OFF
GO
USE [HastaneProje]
GO
/****** Object:  Table [dbo].[Tbl_Branslar]    Script Date: 21.02.2021 00:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Branslar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BransAd] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Branslar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Doktorlar]    Script Date: 21.02.2021 00:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Doktorlar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DoktorAd] [varchar](50) NULL,
	[DoktorSoyad] [varchar](10) NULL,
	[DoktorBrans] [varchar](30) NULL,
	[DoktorTC] [char](11) NULL,
	[DoktorSifre] [varchar](20) NULL,
 CONSTRAINT [PK_Tbl_Doktorlar_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Duyurular]    Script Date: 21.02.2021 00:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Duyurular](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Duyuru] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Duyurular] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Hastalar]    Script Date: 21.02.2021 00:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Hastalar](
	[Hastaid] [int] IDENTITY(1,1) NOT NULL,
	[HastaAd] [varchar](50) NULL,
	[HastaSoyad] [varchar](50) NULL,
	[HastaTc] [char](11) NULL,
	[HastaTelefon] [char](15) NULL,
	[HastaSifre] [varchar](10) NULL,
	[HastaCinsiyet] [varchar](5) NULL,
 CONSTRAINT [PK_Tbl_Hastalar] PRIMARY KEY CLUSTERED 
(
	[Hastaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Randevu]    Script Date: 21.02.2021 00:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Randevu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RandevuTarih] [varchar](50) NULL,
	[RandevuSaat] [varchar](50) NULL,
	[RandevuBrans] [varchar](50) NULL,
	[RandevuDoktor] [varchar](20) NULL,
	[RandevuDurum] [bit] NULL,
	[HastaTC] [char](11) NULL,
	[HastaSikayet] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_Randevu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Sekreter]    Script Date: 21.02.2021 00:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Sekreter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SekreterAdSoyad] [varchar](50) NULL,
	[SekreterTC] [char](11) NULL,
	[SekreterSifre] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Sekreter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Branslar] ON 

INSERT [dbo].[Tbl_Branslar] ([id], [BransAd]) VALUES (1, N'Dahiliye')
INSERT [dbo].[Tbl_Branslar] ([id], [BransAd]) VALUES (2, N'Göz')
INSERT [dbo].[Tbl_Branslar] ([id], [BransAd]) VALUES (3, N'Kulak Burun Boğaz')
INSERT [dbo].[Tbl_Branslar] ([id], [BransAd]) VALUES (4, N'Fizik Tedavi')
INSERT [dbo].[Tbl_Branslar] ([id], [BransAd]) VALUES (1004, N'Psikiyatri')
INSERT [dbo].[Tbl_Branslar] ([id], [BransAd]) VALUES (1005, N'Dahiliye')
INSERT [dbo].[Tbl_Branslar] ([id], [BransAd]) VALUES (2003, N'Beyin Cerrahisi')
SET IDENTITY_INSERT [dbo].[Tbl_Branslar] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Doktorlar] ON 

INSERT [dbo].[Tbl_Doktorlar] ([id], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (1, N'Mehmet', N'Arslan', N'Dahiliye', N'12345678911', N'33334')
INSERT [dbo].[Tbl_Doktorlar] ([id], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (3, N'Ramazan', N'Koçar', N'Kulak Burun Boğaz', N'00000000000', N'123321')
INSERT [dbo].[Tbl_Doktorlar] ([id], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (1002, N'Melis', N'Sever', N'Fizik Tedavi', N'12332123133', N'1232')
INSERT [dbo].[Tbl_Doktorlar] ([id], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (1003, N'Dürdane', N'Çelik', N'Fizik Tedavi', N'77777777777', N'7770')
INSERT [dbo].[Tbl_Doktorlar] ([id], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (1004, N'Ahmet', N'Bükülmez', N'Göz', N'55555555555', N'5555')
INSERT [dbo].[Tbl_Doktorlar] ([id], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (2003, N'Ebru', N'Erdem', N'Psikiyatri', N'66666666666', N'6666')
INSERT [dbo].[Tbl_Doktorlar] ([id], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (2004, N'Sevgi', N'Gül', N'Dahiliye', N'57575757575', N'5555')
SET IDENTITY_INSERT [dbo].[Tbl_Doktorlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Duyurular] ON 

INSERT [dbo].[Tbl_Duyurular] ([id], [Duyuru]) VALUES (1, N'Yarın 10:00 da toplantı olacaktır.Bilginize.')
INSERT [dbo].[Tbl_Duyurular] ([id], [Duyuru]) VALUES (4, N'Yarın 10:00 da toplantı olacaktır.Bilginize.')
INSERT [dbo].[Tbl_Duyurular] ([id], [Duyuru]) VALUES (5, N'Yarın 10:00 da toplantı olacaktır.Bilginize.')
INSERT [dbo].[Tbl_Duyurular] ([id], [Duyuru]) VALUES (6, N'Yarın 10:00 da toplantı olacaktır.Bilginize.')
INSERT [dbo].[Tbl_Duyurular] ([id], [Duyuru]) VALUES (7, N'Yarın 10:00 da toplantı olacaktır.Bilginize.')
INSERT [dbo].[Tbl_Duyurular] ([id], [Duyuru]) VALUES (8, N'Yarın 10:00 da toplantı olacaktır.Bilginize.')
INSERT [dbo].[Tbl_Duyurular] ([id], [Duyuru]) VALUES (9, N'Yarın 10:00 da toplantı olacaktır.Bilginize.')
INSERT [dbo].[Tbl_Duyurular] ([id], [Duyuru]) VALUES (1002, N'Herkese iyi bayramlar ')
INSERT [dbo].[Tbl_Duyurular] ([id], [Duyuru]) VALUES (1003, N'Bugün öğlen namazı mescitte kılınacaktır.')
SET IDENTITY_INSERT [dbo].[Tbl_Duyurular] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] ON 

INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (1, N'Meryem', N'Çevik', N'11111111111', N'(531) 654-1212 ', N'123321', N'Kadın')
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Randevu] ON 

INSERT [dbo].[Tbl_Randevu] ([id], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (1, N'30.01.2021', N'10:00', N'Göz', N'Ayşe Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevu] ([id], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (2, N'29.01.2021', N'11:00', N'Dahiliye', N'Mehmet Arslan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevu] ([id], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (3, N'29.01.2021', N'10:05', N'Göz', N'Ahmet Bükülmez', 1, N'11111111111', N'Bulanık görüyorum.')
INSERT [dbo].[Tbl_Randevu] ([id], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (4, N'29.01.2021', N'09:00', N'Fizik Tedavi', N'Dürdane Çelik', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevu] ([id], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (5, N'29.01.2021', N'14:00', N'Fizik Tedavi', N'Melis Sever', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevu] ([id], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (1002, N'01.02.2021', N'17:00', N'Göz', N'Ahmet Bükülmez', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevu] ([id], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (1003, N'01.02.2021', N'17:00', N'Kulak Burun Boğaz', N'Ramazan Koçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevu] ([id], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (1004, N'01.02.2021', N'17:00', N'Dahiliye', N'Sevgi Gül', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevu] ([id], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (1005, N'01.02.2021', N'16:00', N'Psikiyatri', N'Ebru Erdem', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevu] ([id], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (1006, N'01.02.2021', N'13:00', N'Psikiyatri', N'Ebru Erdem', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevu] ([id], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (1007, N'02.02.2021', N'09:00', N'Kulak Burun Boğaz', N'Ramazan Koçar', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Randevu] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Sekreter] ON 

INSERT [dbo].[Tbl_Sekreter] ([id], [SekreterAdSoyad], [SekreterTC], [SekreterSifre]) VALUES (1, N'Yaren Durmaz', N'65656565654', N'1111')
INSERT [dbo].[Tbl_Sekreter] ([id], [SekreterAdSoyad], [SekreterTC], [SekreterSifre]) VALUES (2, N'Mehmet Korkmaz', N'77777777777', N'7777')
INSERT [dbo].[Tbl_Sekreter] ([id], [SekreterAdSoyad], [SekreterTC], [SekreterSifre]) VALUES (3, N'Semra Nur', N'33333333333', N'3333')
SET IDENTITY_INSERT [dbo].[Tbl_Sekreter] OFF
GO
ALTER TABLE [dbo].[Tbl_Randevu] ADD  CONSTRAINT [DF_Tbl_Randevu_RandevuDurum]  DEFAULT ((0)) FOR [RandevuDurum]
GO
USE [master]
GO
ALTER DATABASE [HastaneProje] SET  READ_WRITE 
GO
