USE [master]
GO
/****** Object:  Database [bank_info]    Script Date: 11-08-2023 10:08:47 ******/
CREATE DATABASE [bank_info]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bank_info', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\bank_info.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bank_info_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\bank_info_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [bank_info] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bank_info].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bank_info] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bank_info] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bank_info] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bank_info] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bank_info] SET ARITHABORT OFF 
GO
ALTER DATABASE [bank_info] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bank_info] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bank_info] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bank_info] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bank_info] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bank_info] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bank_info] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bank_info] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bank_info] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bank_info] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bank_info] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bank_info] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bank_info] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bank_info] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bank_info] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bank_info] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bank_info] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bank_info] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bank_info] SET  MULTI_USER 
GO
ALTER DATABASE [bank_info] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bank_info] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bank_info] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bank_info] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bank_info] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bank_info] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [bank_info] SET QUERY_STORE = OFF
GO
USE [bank_info]
GO
/****** Object:  Table [dbo].[borrow]    Script Date: 11-08-2023 10:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[borrow](
	[loanno] [int] NULL,
	[cname] [varchar](50) NULL,
	[bname] [varchar](50) NULL,
	[amount] [decimal](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[branch]    Script Date: 11-08-2023 10:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[branch](
	[bname] [varchar](50) NULL,
	[city] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 11-08-2023 10:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[cname] [varchar](50) NULL,
	[city] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deposit]    Script Date: 11-08-2023 10:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deposit](
	[actno] [int] NULL,
	[cname] [varchar](50) NULL,
	[bname] [varchar](50) NULL,
	[amount] [decimal](8, 2) NULL,
	[adate] [datetime] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [bank_info] SET  READ_WRITE 
GO
