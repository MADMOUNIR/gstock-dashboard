USE [master]
GO
/****** Object:  Database [ECOMMERCE]    Script Date: 31/05/2024 20:02:16 ******/
CREATE DATABASE [ECOMMERCE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ECOMMERCE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ECOMMERCE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ECOMMERCE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ECOMMERCE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ECOMMERCE] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ECOMMERCE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ECOMMERCE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ECOMMERCE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ECOMMERCE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ECOMMERCE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ECOMMERCE] SET ARITHABORT OFF 
GO
ALTER DATABASE [ECOMMERCE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ECOMMERCE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ECOMMERCE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ECOMMERCE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ECOMMERCE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ECOMMERCE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ECOMMERCE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ECOMMERCE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ECOMMERCE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ECOMMERCE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ECOMMERCE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ECOMMERCE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ECOMMERCE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ECOMMERCE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ECOMMERCE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ECOMMERCE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ECOMMERCE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ECOMMERCE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ECOMMERCE] SET  MULTI_USER 
GO
ALTER DATABASE [ECOMMERCE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ECOMMERCE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ECOMMERCE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ECOMMERCE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ECOMMERCE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ECOMMERCE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ECOMMERCE] SET QUERY_STORE = OFF
GO
USE [ECOMMERCE]
GO
/****** Object:  Table [dbo].[products]    Script Date: 31/05/2024 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(10000,1) NOT NULL,
	[code] [nvarchar](20) NULL,
	[name] [nvarchar](1000) NULL,
	[description] [nvarchar](100) NULL,
	[image] [nvarchar](28) NULL,
	[price] [int] NULL,
	[date_creat] [datetime] NULL,
	[category] [nvarchar](200) NULL,
	[quantity] [int] NULL,
	[inventory_status] [nvarchar](10) NULL,
	[rating] [int] NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[products] ON 
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1000, N'f230fh0g3', N'Bamboo Watch', N'Product Description', N'bamboo-watch.jpg', 65, CAST(N'2022-09-13T00:00:00.000' AS DateTime), N'Accessories', 24, N'INSTOCK', 5)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1001, N'nvklal433', N'Black small Watch AAA', N'39mm', N'black-watch.jpg', 45, CAST(N'2022-09-12T00:00:00.000' AS DateTime), N'Accessories', 50, N'OUTOFSTOCK', 4)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1002, N'zz21cz3c1', N'Blue Small  Band', N'23 mm ', N'blue-band.jpg', 79, CAST(N'2022-09-11T00:00:00.000' AS DateTime), N'Fitness', 10, N'LOWSTOCK', 3)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1003, N'244wgerg2', N'Blue T-Shirt', N'Product Description', N'blue-t-shirt.jpg', 29, CAST(N'2022-09-10T00:00:00.000' AS DateTime), N'Clothing', 25, N'INSTOCK', 5)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1004, N'h456wer53', N'Bracelet', N'Product Description', N'bracelet.jpg', 15, CAST(N'2022-09-09T00:00:00.000' AS DateTime), N'Accessories', 73, N'INSTOCK', 4)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1005, N'av2231fwg', N'Brown Purse', N'Product Description', N'brown-purse.jpg', 120, CAST(N'2022-09-08T00:00:00.000' AS DateTime), N'Accessories', 0, N'OUTOFSTOCK', 4)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1006, N'bib36pfvm', N'Chakra Bracelet', N'Product Description', N'chakra-bracelet.jpg', 32, CAST(N'2022-09-07T00:00:00.000' AS DateTime), N'Accessories', 5, N'LOWSTOCK', 3)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1007, N'mbvjkgip5', N'Galaxy Earrings', N'Product Description', N'galaxy-earrings.jpg', 34, CAST(N'2022-09-06T00:00:00.000' AS DateTime), N'Accessories', 23, N'INSTOCK', 5)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1008, N'vbb124btr', N'Game Controller', N'Product Description', N'game-controller.jpg', 99, CAST(N'2022-09-05T00:00:00.000' AS DateTime), N'Electronics', 2, N'LOWSTOCK', 4)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1009, N'cm230f032', N'Gaming Set', N'Product Description', N'gaming-set.jpg', 299, CAST(N'2022-09-05T00:00:00.000' AS DateTime), N'Electronics', 63, N'INSTOCK', 3)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1010, N'plb34234v', N'Gold Phone Case', N'Product Description', N'gold-phone-case.jpg', 24, CAST(N'2022-09-04T00:00:00.000' AS DateTime), N'Accessories', 0, N'OUTOFSTOCK', 4)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1011, N'4920nnc2d', N'Green Earbuds', N'Product Description', N'green-earbuds.jpg', 89, CAST(N'2022-09-03T00:00:00.000' AS DateTime), N'Electronics', 23, N'INSTOCK', 4)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1012, N'250vm23cc', N'Green T-Shirt', N'Product Description', N'green-t-shirt.jpg', 49, CAST(N'2022-09-03T00:00:00.000' AS DateTime), N'Clothing', 74, N'INSTOCK', 5)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1013, N'fldsmn31b', N'Grey T-Shirt', N'Product Description', N'grey-t-shirt.jpg', 48, CAST(N'2022-09-03T00:00:00.000' AS DateTime), N'Clothing', 0, N'OUTOFSTOCK', 3)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1014, N'waas1x2as', N'Headphones', N'Product Description', N'headphones.jpg', 175, CAST(N'2022-09-02T00:00:00.000' AS DateTime), N'Electronics', 8, N'LOWSTOCK', 5)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1015, N'vb34btbg5', N'Light Green T-Shirt', N'Product Description', N'light-green-t-shirt.jpg', 49, CAST(N'2022-09-02T00:00:00.000' AS DateTime), N'Clothing', 34, N'INSTOCK', 4)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1016, N'k8l6j58jl', N'Lime Band', N'Product Description', N'lime-band.jpg', 79, CAST(N'2022-09-02T00:00:00.000' AS DateTime), N'Fitness', 12, N'INSTOCK', 3)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1017, N'v435nn85n', N'Mini Speakers', N'Product Description', N'mini-speakers.jpg', 85, CAST(N'2022-08-30T00:00:00.000' AS DateTime), N'Clothing', 42, N'INSTOCK', 4)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1018, N'09zx9c0zc', N'Painted Phone Case', N'Product Description', N'painted-phone-case.jpg', 56, CAST(N'2022-08-30T00:00:00.000' AS DateTime), N'Accessories', 41, N'INSTOCK', 5)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1019, N'mnb5mb2m5', N'Pink Band', N'Product Description', N'pink-band.jpg', 79, CAST(N'2022-08-30T00:00:00.000' AS DateTime), N'Fitness', 63, N'INSTOCK', 4)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1020, N'r23fwf2w3', N'Pink Purse', N'Product Description', N'pink-purse.jpg', 110, CAST(N'2022-08-30T00:00:00.000' AS DateTime), N'Accessories', 0, N'OUTOFSTOCK', 4)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1021, N'pxpzczo23', N'Purple Band', N'Product Description', N'purple-band.jpg', 79, CAST(N'2022-08-30T00:00:00.000' AS DateTime), N'Fitness', 6, N'LOWSTOCK', 3)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1022, N'2c42cb5cb', N'Purple Gemstone Necklace', N'Product Description', N'purple-gemstone-necklace.jpg', 45, CAST(N'2022-08-30T00:00:00.000' AS DateTime), N'Accessories', 62, N'INSTOCK', 4)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1023, N'5k43kkk23', N'Purple T-Shirt', N'Product Description', N'purple-t-shirt.jpg', 49, CAST(N'2022-08-28T00:00:00.000' AS DateTime), N'Clothing', 2, N'LOWSTOCK', 5)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1024, N'lm2tny2k4', N'Shoes', N'Product Description', N'shoes.jpg', 64, CAST(N'2022-08-28T00:00:00.000' AS DateTime), N'Clothing', 0, N'INSTOCK', 4)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1025, N'nbm5mv45n', N'Sneakers', N'Product Description', N'sneakers.jpg', 78, CAST(N'2022-08-28T00:00:00.000' AS DateTime), N'Clothing', 52, N'INSTOCK', 4)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1026, N'zx23zc42c', N'Teal T-Shirt', N'Product Description', N'teal-t-shirt.jpg', 49, CAST(N'2022-08-27T00:00:00.000' AS DateTime), N'Clothing', 3, N'LOWSTOCK', 3)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1027, N'acvx872gc', N'Yellow Earbuds', N'Product Description', N'yellow-earbuds.jpg', 89, CAST(N'2022-08-27T00:00:00.000' AS DateTime), N'Electronics', 35, N'INSTOCK', 3)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1028, N'tx125ck42', N'Yoga Mat', N'Product Description', N'yoga-mat.jpg', 20, CAST(N'2022-08-26T00:00:00.000' AS DateTime), N'Fitness', 15, N'INSTOCK', 5)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (1029, N'gwuby345v', N'Yoga Set', N'Product Description', N'yoga-set.jpg', 20, CAST(N'2022-08-26T00:00:00.000' AS DateTime), N'Fitness', 25, N'INSTOCK', 8)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (2000, N'f2fgfd30fh0g3', N'Bamboo Watch - 2', N'Product Description - 2', N'bamboo-watch.jpg', 165, CAST(N'2022-09-13T00:00:00.000' AS DateTime), N'Accessories', 124, N'INSTOCK', 5)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (2001, N'f2fgfd30fh0g3', N'Bamboo Watch - 3', N'Product Description - 3', N'bamboo-watch.jpg', 15, CAST(N'2022-09-13T00:00:00.000' AS DateTime), N'Accessories', 12, N'INSTOCK', 5)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (2002, N'f23044fh0g3', N'Bamboo Watch - 2002', N'Product Description -2002', N'bamboo-watch.jpg', 45, CAST(N'2022-09-13T00:00:00.000' AS DateTime), N'Accessories', 44, N'INSTOCK', 5)
GO
INSERT [dbo].[products] ([id], [code], [name], [description], [image], [price], [date_creat], [category], [quantity], [inventory_status], [rating]) VALUES (10000, N'f230444545h0g3', N'TEST INC', N'Product Description -2004', N'bamboo-watch.jpg', 45, CAST(N'2022-09-13T00:00:00.000' AS DateTime), N'Accessories', 44, N'INSTOCK', 5)
GO
SET IDENTITY_INSERT [dbo].[products] OFF
GO
USE [master]
GO
ALTER DATABASE [ECOMMERCE] SET  READ_WRITE 
GO
