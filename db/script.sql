USE [Manager]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Rename', @level2type=N'CONSTRAINT',@level2name=N'FK_Rename_People'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'CONSTRAINT',@level2name=N'CK_Tel_Limit'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'CONSTRAINT',@level2name=N'CK_Sex_Limit'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'CONSTRAINT',@level2name=N'CK_ID_Limit'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'COLUMN',@level2name=N'Tel_No'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'COLUMN',@level2name=N'ID_Num'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Move', @level2type=N'CONSTRAINT',@level2name=N'FK_Move_People'
GO
ALTER TABLE [dbo].[People] DROP CONSTRAINT [CK_Tel_Limit]
GO
ALTER TABLE [dbo].[People] DROP CONSTRAINT [CK_Sex_Limit]
GO
ALTER TABLE [dbo].[People] DROP CONSTRAINT [CK_ID_Limit]
GO
ALTER TABLE [dbo].[Rename] DROP CONSTRAINT [FK_Rename_People]
GO
ALTER TABLE [dbo].[People] DROP CONSTRAINT [FK_People_People]
GO
ALTER TABLE [dbo].[Move] DROP CONSTRAINT [FK_Move_People]
GO
/****** Object:  Index [IX_Rename_1]    Script Date: 2019/5/27 1:20:03 ******/
DROP INDEX [IX_Rename_1] ON [dbo].[Rename]
GO
/****** Object:  Index [IX_Rename]    Script Date: 2019/5/27 1:20:03 ******/
DROP INDEX [IX_Rename] ON [dbo].[Rename]
GO
/****** Object:  Index [IX_Move_1]    Script Date: 2019/5/27 1:20:03 ******/
DROP INDEX [IX_Move_1] ON [dbo].[Move]
GO
/****** Object:  Index [IX_Move]    Script Date: 2019/5/27 1:20:03 ******/
DROP INDEX [IX_Move] ON [dbo].[Move]
GO
/****** Object:  Table [dbo].[Rename]    Script Date: 2019/5/27 1:20:03 ******/
DROP TABLE [dbo].[Rename]
GO
/****** Object:  Table [dbo].[People]    Script Date: 2019/5/27 1:20:03 ******/
DROP TABLE [dbo].[People]
GO
/****** Object:  Table [dbo].[Move]    Script Date: 2019/5/27 1:20:03 ******/
DROP TABLE [dbo].[Move]
GO
USE [master]
GO
/****** Object:  Database [Manager]    Script Date: 2019/5/27 1:20:03 ******/
DROP DATABASE [Manager]
GO
/****** Object:  Database [Manager]    Script Date: 2019/5/27 1:20:03 ******/
CREATE DATABASE [Manager] ON  PRIMARY 
( NAME = N'Citizens', FILENAME = N'D:\Program_Files_(x64)\Microsoft\SQL_Server_2017\Instances\MSSQL14.EXPRESS17\MSSQL\UserData\Citizens.mdf' , SIZE = 8192KB , MAXSIZE = 1048576KB , FILEGROWTH = 1%)
 LOG ON 
( NAME = N'Citizens_log', FILENAME = N'D:\Program_Files_(x64)\Microsoft\SQL_Server_2017\Instances\MSSQL14.EXPRESS17\MSSQL\UserData\Citizens_log.ldf' , SIZE = 8192KB , MAXSIZE = 1048576KB , FILEGROWTH = 1%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Manager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Manager] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Manager] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Manager] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Manager] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Manager] SET ARITHABORT OFF 
GO
ALTER DATABASE [Manager] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Manager] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Manager] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Manager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Manager] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Manager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Manager] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Manager] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Manager] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Manager] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Manager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Manager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Manager] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Manager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Manager] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Manager] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Manager] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Manager] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Manager] SET  MULTI_USER 
GO
ALTER DATABASE [Manager] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Manager] SET DB_CHAINING OFF 
GO
USE [Manager]
GO
/****** Object:  Table [dbo].[Move]    Script Date: 2019/5/27 1:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Move](
	[ID_Num] [char](18) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Date] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 2019/5/27 1:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[Name] [nvarchar](10) NOT NULL,
	[Sex] [nchar](2) NOT NULL,
	[ID_Num] [char](18) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Tel_No] [numeric](12, 0) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[ID_Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rename]    Script Date: 2019/5/27 1:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rename](
	[ID_Num] [char](18) NOT NULL,
	[Old_Name] [char](10) NOT NULL,
	[Date] [datetime] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Move] ([ID_Num], [Address], [Date]) VALUES (N'440101200101010101', N'北京市', CAST(N'2019-05-27T00:14:47.990' AS DateTime))
INSERT [dbo].[Move] ([ID_Num], [Address], [Date]) VALUES (N'440111201111111111', N'上海', CAST(N'2019-05-27T00:34:22.500' AS DateTime))
INSERT [dbo].[Move] ([ID_Num], [Address], [Date]) VALUES (N'440111201111111111', N'杭州', CAST(N'2019-05-27T00:35:12.933' AS DateTime))
INSERT [dbo].[Move] ([ID_Num], [Address], [Date]) VALUES (N'440111201111111111', N'杭州', CAST(N'2019-05-27T00:35:44.370' AS DateTime))
INSERT [dbo].[People] ([Name], [Sex], [ID_Num], [Address], [Tel_No], [Date]) VALUES (N'John', N'男 ', N'440101200101010101', N'北京市', CAST(13333333333 AS Numeric(12, 0)), CAST(N'2019-05-27T00:23:28.633' AS DateTime))
INSERT [dbo].[People] ([Name], [Sex], [ID_Num], [Address], [Tel_No], [Date]) VALUES (N'Ben', N'男 ', N'440111201111111111', N'杭州', CAST(13333333333 AS Numeric(12, 0)), CAST(N'2019-05-27T00:35:44.367' AS DateTime))
INSERT [dbo].[Rename] ([ID_Num], [Old_Name], [Date]) VALUES (N'440101200101010101', N'Alice     ', CAST(N'2019-05-27T00:08:35.767' AS DateTime))
INSERT [dbo].[Rename] ([ID_Num], [Old_Name], [Date]) VALUES (N'440101200101010101', N'Alice     ', CAST(N'2019-05-27T00:14:47.987' AS DateTime))
INSERT [dbo].[Rename] ([ID_Num], [Old_Name], [Date]) VALUES (N'440101200101010101', N'Cindarela ', CAST(N'2019-05-27T00:15:07.933' AS DateTime))
INSERT [dbo].[Rename] ([ID_Num], [Old_Name], [Date]) VALUES (N'440101200101010101', N'Alice     ', CAST(N'2019-05-27T00:18:24.390' AS DateTime))
INSERT [dbo].[Rename] ([ID_Num], [Old_Name], [Date]) VALUES (N'440101200101010101', N'Bob       ', CAST(N'2019-05-27T00:19:22.057' AS DateTime))
INSERT [dbo].[Rename] ([ID_Num], [Old_Name], [Date]) VALUES (N'440101200101010101', N'Ben       ', CAST(N'2019-05-27T00:20:54.577' AS DateTime))
INSERT [dbo].[Rename] ([ID_Num], [Old_Name], [Date]) VALUES (N'440101200101010101', N'John      ', CAST(N'2019-05-27T00:23:28.633' AS DateTime))
INSERT [dbo].[Rename] ([ID_Num], [Old_Name], [Date]) VALUES (N'440111201111111111', N'Alice     ', CAST(N'2019-05-27T00:34:22.500' AS DateTime))
INSERT [dbo].[Rename] ([ID_Num], [Old_Name], [Date]) VALUES (N'440111201111111111', N'Ben       ', CAST(N'2019-05-27T00:35:12.930' AS DateTime))
INSERT [dbo].[Rename] ([ID_Num], [Old_Name], [Date]) VALUES (N'440111201111111111', N'Ben       ', CAST(N'2019-05-27T00:35:44.370' AS DateTime))
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Move]    Script Date: 2019/5/27 1:20:03 ******/
CREATE NONCLUSTERED INDEX [IX_Move] ON [dbo].[Move]
(
	[ID_Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Move_1]    Script Date: 2019/5/27 1:20:03 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Move_1] ON [dbo].[Move]
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Rename]    Script Date: 2019/5/27 1:20:03 ******/
CREATE NONCLUSTERED INDEX [IX_Rename] ON [dbo].[Rename]
(
	[ID_Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rename_1]    Script Date: 2019/5/27 1:20:03 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Rename_1] ON [dbo].[Rename]
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Move]  WITH CHECK ADD  CONSTRAINT [FK_Move_People] FOREIGN KEY([ID_Num])
REFERENCES [dbo].[People] ([ID_Num])
GO
ALTER TABLE [dbo].[Move] CHECK CONSTRAINT [FK_Move_People]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_People_People] FOREIGN KEY([ID_Num])
REFERENCES [dbo].[People] ([ID_Num])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_People_People]
GO
ALTER TABLE [dbo].[Rename]  WITH CHECK ADD  CONSTRAINT [FK_Rename_People] FOREIGN KEY([ID_Num])
REFERENCES [dbo].[People] ([ID_Num])
GO
ALTER TABLE [dbo].[Rename] CHECK CONSTRAINT [FK_Rename_People]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [CK_ID_Limit] CHECK  ((len([ID_Num])=(15) OR len([ID_Num])=(18)))
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [CK_ID_Limit]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [CK_Sex_Limit] CHECK  (([Sex]='男' OR [Sex]='女'))
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [CK_Sex_Limit]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [CK_Tel_Limit] CHECK  ((len([Tel_No])>=(10) AND len([Tel_No])<=(12)))
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [CK_Tel_Limit]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证绑定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Move', @level2type=N'CONSTRAINT',@level2name=N'FK_Move_People'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'COLUMN',@level2name=N'ID_Num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'COLUMN',@level2name=N'Tel_No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户籍变更时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'限制身份证长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'CONSTRAINT',@level2name=N'CK_ID_Limit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'限制性别取值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'CONSTRAINT',@level2name=N'CK_Sex_Limit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'限制号码长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'People', @level2type=N'CONSTRAINT',@level2name=N'CK_Tel_Limit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号关联' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Rename', @level2type=N'CONSTRAINT',@level2name=N'FK_Rename_People'
GO
USE [master]
GO
ALTER DATABASE [Manager] SET  READ_WRITE 
GO
