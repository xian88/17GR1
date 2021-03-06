USE [master]
GO
/****** Object:  Database [student]    Script Date: 2017/12/15 11:51:24 ******/
CREATE DATABASE [student]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'student', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\student.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'student_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\student_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [student] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [student].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [student] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [student] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [student] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [student] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [student] SET ARITHABORT OFF 
GO
ALTER DATABASE [student] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [student] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [student] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [student] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [student] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [student] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [student] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [student] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [student] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [student] SET  DISABLE_BROKER 
GO
ALTER DATABASE [student] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [student] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [student] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [student] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [student] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [student] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [student] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [student] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [student] SET  MULTI_USER 
GO
ALTER DATABASE [student] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [student] SET DB_CHAINING OFF 
GO
ALTER DATABASE [student] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [student] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [student] SET DELAYED_DURABILITY = DISABLED 
GO
USE [student]
GO
/****** Object:  Table [dbo].[course]    Script Date: 2017/12/15 11:51:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[cid] [int] NULL,
	[cnam] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[score]    Script Date: 2017/12/15 11:51:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[score](
	[scid] [int] NOT NULL,
	[sid] [int] NULL,
	[cid] [int] NULL,
	[score] [decimal](6, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[student]    Script Date: 2017/12/15 11:51:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[sid] [int] NOT NULL,
	[snam] [nchar](10) NULL,
	[sex] [nvarchar](1) NULL,
	[birth] [nchar](30) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [student] SET  READ_WRITE 
GO
