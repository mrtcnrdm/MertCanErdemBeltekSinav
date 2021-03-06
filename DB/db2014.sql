USE [master]
GO
/****** Object:  Database [BeltekOdev]    Script Date: 29.12.2021 13:34:31 ******/
CREATE DATABASE [BeltekOdev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BeltekOdev', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BeltekOdev.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BeltekOdev_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BeltekOdev_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BeltekOdev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BeltekOdev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BeltekOdev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BeltekOdev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BeltekOdev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BeltekOdev] SET ARITHABORT OFF 
GO
ALTER DATABASE [BeltekOdev] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BeltekOdev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BeltekOdev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BeltekOdev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BeltekOdev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BeltekOdev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BeltekOdev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BeltekOdev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BeltekOdev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BeltekOdev] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BeltekOdev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BeltekOdev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BeltekOdev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BeltekOdev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BeltekOdev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BeltekOdev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BeltekOdev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BeltekOdev] SET RECOVERY FULL 
GO
ALTER DATABASE [BeltekOdev] SET  MULTI_USER 
GO
ALTER DATABASE [BeltekOdev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BeltekOdev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BeltekOdev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BeltekOdev] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BeltekOdev] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BeltekOdev', N'ON'
GO
USE [BeltekOdev]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 29.12.2021 13:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 29.12.2021 13:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GenderName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Genders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 29.12.2021 13:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ProductTitle] [nvarchar](max) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductImage] [nvarchar](max) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ProductPrice] [float] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 29.12.2021 13:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[GenderId] [int] NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (1, N'Bilgisayar')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (2, N'Cep Telefonu')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (3, N'Tablet')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (4, N'Monitör')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (5, N'Televizyon')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([Id], [GenderName]) VALUES (1, N'Erkek')
INSERT [dbo].[Genders] ([Id], [GenderName]) VALUES (2, N'Kadın')
INSERT [dbo].[Genders] ([Id], [GenderName]) VALUES (3, N'Belirtmek İstemiyorum')
SET IDENTITY_INSERT [dbo].[Genders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [CategoryId], [ProductTitle], [ProductName], [ProductDescription], [ProductImage], [CreationDate], [ProductPrice]) VALUES (2, 1, N'MSİ', N'MSİ', N'msi bilgisayar', N'error-img.png', CAST(N'2021-12-29T11:34:17.233' AS DateTime), 5000)
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductTitle], [ProductName], [ProductDescription], [ProductImage], [CreationDate], [ProductPrice]) VALUES (3, 1, N'Monster ', N'Monster Abra A5 V17.2', N'ram: 32', N'error-img.png', CAST(N'2021-12-29T11:59:22.543' AS DateTime), 7000)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FullName], [GenderId], [Email], [Password]) VALUES (1, N'Mert Can Erdem', 1, N'mrtcnrdmii@gmail.com', N'123')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Genders] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Genders] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Genders]
GO
USE [master]
GO
ALTER DATABASE [BeltekOdev] SET  READ_WRITE 
GO
