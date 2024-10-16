USE [master]
GO
/****** Object:  Database [Tarakanov_Vibornov_Zatyagalov_Chek]    Script Date: 11.04.2023 10:57:51 ******/
CREATE DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tarakanov_Vibornov_Zatyagalov_Chek', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Tarakanov_Vibornov_Zatyagalov_Chek.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tarakanov_Vibornov_Zatyagalov_Chek_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Tarakanov_Vibornov_Zatyagalov_Chek_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tarakanov_Vibornov_Zatyagalov_Chek].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET  MULTI_USER 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Tarakanov_Vibornov_Zatyagalov_Chek', N'ON'
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET QUERY_STORE = OFF
GO
USE [Tarakanov_Vibornov_Zatyagalov_Chek]
GO
/****** Object:  Table [dbo].[Spisok_tov]    Script Date: 11.04.2023 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spisok_tov](
	[Num_chek] [real] NOT NULL,
	[Cod_tov] [real] NOT NULL,
	[Kol] [real] NULL,
 CONSTRAINT [PK_Spisok_tov] PRIMARY KEY CLUSTERED 
(
	[Num_chek] ASC,
	[Cod_tov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tov]    Script Date: 11.04.2023 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tov](
	[Cod_tov] [real] NOT NULL,
	[Nasv_tov] [varchar](100) NULL,
	[Sena] [money] NULL,
 CONSTRAINT [PK_Tov] PRIMARY KEY CLUSTERED 
(
	[Cod_tov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chek]    Script Date: 11.04.2023 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chek](
	[Num_chek] [real] NOT NULL,
	[Familia] [nchar](50) NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[Otchestvo] [nchar](50) NULL,
	[Num_casi] [real] NULL,
	[Skidka] [money] NULL,
	[Obsh_stoim] [money] NULL,
	[Vid_oplati] [text] NULL,
	[Vremya_pokupki] [datetime] NULL,
	[Cod_magaz] [real] NULL,
 CONSTRAINT [PK_Chek] PRIMARY KEY CLUSTERED 
(
	[Num_chek] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Spisok_tov_chek]    Script Date: 11.04.2023 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Spisok_tov_chek] AS
SELECT Chek.Num_chek, Spisok_tov.Cod_tov, Tov.Nasv_tov, Tov.Sena, Spisok_tov.kol, (Spisok_tov.Kol*Tov.Sena) as "Obsh sena"
FROM Chek, Spisok_tov, Tov
WHERE (Chek.Num_chek=Spisok_tov.Num_chek) and (Tov.Cod_tov=Spisok_tov.Cod_tov)
GO
/****** Object:  Table [dbo].[Magaz]    Script Date: 11.04.2023 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Magaz](
	[Cod_magaz] [real] NOT NULL,
	[Nazv_magaz] [varchar](100) NULL,
	[Aders_magaz] [varchar](200) NULL,
 CONSTRAINT [PK_Magaz] PRIMARY KEY CLUSTERED 
(
	[Cod_magaz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Chek_Magaz]    Script Date: 11.04.2023 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chek_Magaz] AS
SELECT Chek.Num_chek, Chek.FIO, Chek.Num_casi, Chek.Skidka, Chek.Obsh_stoim, Chek.Vid_oplati, Chek.Vremya_pokupki, Magaz.Nazv_magaz, Magaz.Aders_magaz
FROM Chek, Magaz
WHERE Chek.Cod_magaz=Magaz.Cod_magaz
GO
INSERT [dbo].[Chek] ([Num_chek], [Familia], [Name], [Otchestvo], [Num_casi], [Skidka], [Obsh_stoim], [Vid_oplati], [Vremya_pokupki], [Cod_magaz]) VALUES (1, N'Artenov                                           ', N'Billi                                             ', N'BOmbovich                                         ', 45, 200.0000, 2000.0000, N'nal', CAST(N'2023-04-05T10:48:22.703' AS DateTime), 50)
INSERT [dbo].[Chek] ([Num_chek], [Familia], [Name], [Otchestvo], [Num_casi], [Skidka], [Obsh_stoim], [Vid_oplati], [Vremya_pokupki], [Cod_magaz]) VALUES (2, N'Petrov                                            ', N'Alesha                                            ', N'Chigan                                            ', 12, 0.0000, 1000000.0000, N'nal', CAST(N'2023-04-05T10:48:22.703' AS DateTime), 45)
INSERT [dbo].[Chek] ([Num_chek], [Familia], [Name], [Otchestvo], [Num_casi], [Skidka], [Obsh_stoim], [Vid_oplati], [Vremya_pokupki], [Cod_magaz]) VALUES (3, N'Jorno                                             ', N'Jovanni                                           ', NULL, 15, 0.0000, 1000000.0000, N'nal', CAST(N'2023-04-05T10:48:22.703' AS DateTime), 50)
INSERT [dbo].[Chek] ([Num_chek], [Familia], [Name], [Otchestvo], [Num_casi], [Skidka], [Obsh_stoim], [Vid_oplati], [Vremya_pokupki], [Cod_magaz]) VALUES (5, N'Petrov                                            ', N'Andrei                                            ', NULL, 12, 150.0000, 1500.0000, N'nal', CAST(N'2023-04-05T10:48:22.703' AS DateTime), 45)
GO
INSERT [dbo].[Magaz] ([Cod_magaz], [Nazv_magaz], [Aders_magaz]) VALUES (10, N' КБ', N' Ленинградская 45')
INSERT [dbo].[Magaz] ([Cod_magaz], [Nazv_magaz], [Aders_magaz]) VALUES (12, N' Северный градус', N' Ильшино 16')
INSERT [dbo].[Magaz] ([Cod_magaz], [Nazv_magaz], [Aders_magaz]) VALUES (23, N' Аллея', N' Проспект победы 15')
INSERT [dbo].[Magaz] ([Cod_magaz], [Nazv_magaz], [Aders_magaz]) VALUES (45, N'Magnit', N'Vologda')
INSERT [dbo].[Magaz] ([Cod_magaz], [Nazv_magaz], [Aders_magaz]) VALUES (50, N'Magnit', N'Piter')
INSERT [dbo].[Magaz] ([Cod_magaz], [Nazv_magaz], [Aders_magaz]) VALUES (65, N'Sharam-Daram', N' Проспект победы 20')
INSERT [dbo].[Magaz] ([Cod_magaz], [Nazv_magaz], [Aders_magaz]) VALUES (69, N' Макси', N' Ильшино 12')
INSERT [dbo].[Magaz] ([Cod_magaz], [Nazv_magaz], [Aders_magaz]) VALUES (74, N' Магнит', N' Проспект победы 20')
INSERT [dbo].[Magaz] ([Cod_magaz], [Nazv_magaz], [Aders_magaz]) VALUES (85, N' Пятёрочка', N' Марфино')
INSERT [dbo].[Magaz] ([Cod_magaz], [Nazv_magaz], [Aders_magaz]) VALUES (96, N'Posolstvo_Shaurmi', N' Ленинградская 465')
INSERT [dbo].[Magaz] ([Cod_magaz], [Nazv_magaz], [Aders_magaz]) VALUES (123, N' Магнит', N' Ильюшино 12')
INSERT [dbo].[Magaz] ([Cod_magaz], [Nazv_magaz], [Aders_magaz]) VALUES (456, N' Бристоль', N' Ильюшино 14')
GO
INSERT [dbo].[Spisok_tov] ([Num_chek], [Cod_tov], [Kol]) VALUES (1, 45, 4)
INSERT [dbo].[Spisok_tov] ([Num_chek], [Cod_tov], [Kol]) VALUES (1, 69, 8)
INSERT [dbo].[Spisok_tov] ([Num_chek], [Cod_tov], [Kol]) VALUES (3, 15, 1)
INSERT [dbo].[Spisok_tov] ([Num_chek], [Cod_tov], [Kol]) VALUES (3, 45, 3)
INSERT [dbo].[Spisok_tov] ([Num_chek], [Cod_tov], [Kol]) VALUES (5, 69, 60)
GO
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (5, N'Moloko', 35.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (12, N'Kniga "Priklucheniya GOGa"', 5000.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (15, N'Zefir', 1000000.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (24, N'poroshok ot doshika', 350.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (45, N'Manga', 450.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (57, N'Velikiy imperator VV Putin', 50.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (69, N'Hleb', 25.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (100, N'Манга', 25.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (101, N'Лапша', 0.2100)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (102, N'Лошка', 481.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (103, N'Соль', 456.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (104, N'Вилка', 123.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (105, N'Торт', 450.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (106, N'Нож', 1231.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (107, N'Makoroni', 41231.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (108, N'Манка', 12.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (109, N'Пистолет', 10025.0000)
INSERT [dbo].[Tov] ([Cod_tov], [Nasv_tov], [Sena]) VALUES (110, N'Зубная щётка', 180.0000)
GO
ALTER TABLE [dbo].[Chek]  WITH CHECK ADD  CONSTRAINT [FK_Chek_Magaz] FOREIGN KEY([Cod_magaz])
REFERENCES [dbo].[Magaz] ([Cod_magaz])
GO
ALTER TABLE [dbo].[Chek] CHECK CONSTRAINT [FK_Chek_Magaz]
GO
ALTER TABLE [dbo].[Spisok_tov]  WITH CHECK ADD  CONSTRAINT [FK_Spisok_tov_Chek] FOREIGN KEY([Num_chek])
REFERENCES [dbo].[Chek] ([Num_chek])
GO
ALTER TABLE [dbo].[Spisok_tov] CHECK CONSTRAINT [FK_Spisok_tov_Chek]
GO
ALTER TABLE [dbo].[Spisok_tov]  WITH CHECK ADD  CONSTRAINT [FK_Spisok_tov_Tov] FOREIGN KEY([Cod_tov])
REFERENCES [dbo].[Tov] ([Cod_tov])
GO
ALTER TABLE [dbo].[Spisok_tov] CHECK CONSTRAINT [FK_Spisok_tov_Tov]
GO
USE [master]
GO
ALTER DATABASE [Tarakanov_Vibornov_Zatyagalov_Chek] SET  READ_WRITE 
GO
