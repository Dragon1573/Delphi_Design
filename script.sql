USE [master]
GO
  /****** Object:  Database [Manager]    Script Date: 2019/5/26 15:29:06 ******/
  CREATE DATABASE [Manager] ON PRIMARY (
    NAME = N'Citizens',
    FILENAME = N'C:\Citizens.mdf',
    SIZE = 8192KB,
    MAXSIZE = 1048576KB,
    FILEGROWTH = 1 %
  ) LOG ON (
    NAME = N'Citizens_log',
    FILENAME = N'C:\Citizens_log.ldf',
    SIZE = 8192KB,
    MAXSIZE = 1048576KB,
    FILEGROWTH = 1 %
  )
GO
  IF (
    1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled')
  ) begin EXEC [Manager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
  ALTER DATABASE [Manager]
SET
  ANSI_NULL_DEFAULT OFF
GO
  ALTER DATABASE [Manager]
SET
  ANSI_NULLS OFF
GO
  ALTER DATABASE [Manager]
SET
  ANSI_PADDING OFF
GO
  ALTER DATABASE [Manager]
SET
  ANSI_WARNINGS OFF
GO
  ALTER DATABASE [Manager]
SET
  ARITHABORT OFF
GO
  ALTER DATABASE [Manager]
SET
  AUTO_CLOSE OFF
GO
  ALTER DATABASE [Manager]
SET
  AUTO_SHRINK OFF
GO
  ALTER DATABASE [Manager]
SET
  AUTO_UPDATE_STATISTICS ON
GO
  ALTER DATABASE [Manager]
SET
  CURSOR_CLOSE_ON_COMMIT OFF
GO
  ALTER DATABASE [Manager]
SET
  CURSOR_DEFAULT GLOBAL
GO
  ALTER DATABASE [Manager]
SET
  CONCAT_NULL_YIELDS_NULL OFF
GO
  ALTER DATABASE [Manager]
SET
  NUMERIC_ROUNDABORT OFF
GO
  ALTER DATABASE [Manager]
SET
  QUOTED_IDENTIFIER OFF
GO
  ALTER DATABASE [Manager]
SET
  RECURSIVE_TRIGGERS OFF
GO
  ALTER DATABASE [Manager]
SET
  DISABLE_BROKER
GO
  ALTER DATABASE [Manager]
SET
  AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
  ALTER DATABASE [Manager]
SET
  DATE_CORRELATION_OPTIMIZATION OFF
GO
  ALTER DATABASE [Manager]
SET
  TRUSTWORTHY OFF
GO
  ALTER DATABASE [Manager]
SET
  ALLOW_SNAPSHOT_ISOLATION OFF
GO
  ALTER DATABASE [Manager]
SET
  PARAMETERIZATION SIMPLE
GO
  ALTER DATABASE [Manager]
SET
  READ_COMMITTED_SNAPSHOT OFF
GO
  ALTER DATABASE [Manager]
SET
  HONOR_BROKER_PRIORITY OFF
GO
  ALTER DATABASE [Manager]
SET
  RECOVERY SIMPLE
GO
  ALTER DATABASE [Manager]
SET
  MULTI_USER
GO
  ALTER DATABASE [Manager]
SET
  PAGE_VERIFY CHECKSUM
GO
  ALTER DATABASE [Manager]
SET
  DB_CHAINING OFF
GO
  USE [Manager]
GO
  /****** Object:  Table [dbo].[Move]    Script Date: 2019/5/26 15:29:06 ******/
SET
  ANSI_NULLS ON
GO
SET
  QUOTED_IDENTIFIER ON
GO
  CREATE TABLE [dbo].[Move](
    [ID_Num] [char](18) NOT NULL,
    [Address] [nvarchar](100) NOT NULL,
    [Date] [datetime] NOT NULL
  ) ON [PRIMARY]
GO
  /****** Object:  Table [dbo].[People]    Script Date: 2019/5/26 15:29:06 ******/
SET
  ANSI_NULLS ON
GO
SET
  QUOTED_IDENTIFIER ON
GO
  CREATE TABLE [dbo].[People](
    [Name] [nvarchar](10) NOT NULL,
    [Sex] [nchar](2) NOT NULL,
    [ID_Num] [char](18) NOT NULL,
    [Address] [nvarchar](100) NOT NULL,
    [Tel_No] [numeric](12, 0) NOT NULL,
    [Date] [datetime] NOT NULL,
    CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED ([ID_Num] ASC) WITH (
      PAD_INDEX = OFF,
      STATISTICS_NORECOMPUTE = OFF,
      IGNORE_DUP_KEY = OFF,
      ALLOW_ROW_LOCKS = ON,
      ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
  ) ON [PRIMARY]
GO
  /****** Object:  Table [dbo].[Rename]    Script Date: 2019/5/26 15:29:06 ******/
SET
  ANSI_NULLS ON
GO
SET
  QUOTED_IDENTIFIER ON
GO
  CREATE TABLE [dbo].[Rename](
    [ID_Num] [char](18) NOT NULL,
    [Old_Name] [char](10) NOT NULL,
    [Date] [datetime] NOT NULL
  ) ON [PRIMARY]
GO
ALTER TABLE
  [dbo].[Move] WITH CHECK
ADD
  CONSTRAINT [FK_Move_People] FOREIGN KEY([ID_Num]) REFERENCES [dbo].[People] ([ID_Num])
GO
ALTER TABLE
  [dbo].[Move] CHECK CONSTRAINT [FK_Move_People]
GO
ALTER TABLE
  [dbo].[People] WITH CHECK
ADD
  CONSTRAINT [FK_People_People] FOREIGN KEY([ID_Num]) REFERENCES [dbo].[People] ([ID_Num])
GO
ALTER TABLE
  [dbo].[People] CHECK CONSTRAINT [FK_People_People]
GO
ALTER TABLE
  [dbo].[Rename] WITH CHECK
ADD
  CONSTRAINT [FK_Rename_People] FOREIGN KEY([ID_Num]) REFERENCES [dbo].[People] ([ID_Num])
GO
ALTER TABLE
  [dbo].[Rename] CHECK CONSTRAINT [FK_Rename_People]
GO
ALTER TABLE
  [dbo].[People] WITH CHECK
ADD
  CONSTRAINT [CK_ID_Limit] CHECK (
    (
      len([ID_Num]) =(15)
      OR len([ID_Num]) =(18)
    )
  )
GO
ALTER TABLE
  [dbo].[People] CHECK CONSTRAINT [CK_ID_Limit]
GO
ALTER TABLE
  [dbo].[People] WITH CHECK
ADD
  CONSTRAINT [CK_Sex_Limit] CHECK (
    (
      [Sex] = '男'
      OR [Sex] = '女'
    )
  )
GO
ALTER TABLE
  [dbo].[People] CHECK CONSTRAINT [CK_Sex_Limit]
GO
ALTER TABLE
  [dbo].[People] WITH CHECK
ADD
  CONSTRAINT [CK_Tel_Limit] CHECK (
    (
      len([Tel_No]) >=(10)
      AND len([Tel_No]) <=(12)
    )
  )
GO
ALTER TABLE
  [dbo].[People] CHECK CONSTRAINT [CK_Tel_Limit]
GO
  EXEC sys.sp_addextendedproperty @name = N'MS_Description',
  @value = N'身份证绑定',
  @level0type = N'SCHEMA',
  @level0name = N'dbo',
  @level1type = N'TABLE',
  @level1name = N'Move',
  @level2type = N 'CONSTRAINT',
  @level2name = N'FK_Move_People'
GO
  EXEC sys.sp_addextendedproperty @name = N'MS_Description',
  @value = N'姓名',
  @level0type = N'SCHEMA',
  @level0name = N'dbo',
  @level1type = N'TABLE',
  @level1name = N'People',
  @level2type = N 'COLUMN',
  @level2name = N 'Name'
GO
  EXEC sys.sp_addextendedproperty @name = N'MS_Description',
  @value = N'性别',
  @level0type = N'SCHEMA',
  @level0name = N'dbo',
  @level1type = N'TABLE',
  @level1name = N'People',
  @level2type = N 'COLUMN',
  @level2name = N'Sex'
GO
  EXEC sys.sp_addextendedproperty @name = N'MS_Description',
  @value = N'身份证号',
  @level0type = N'SCHEMA',
  @level0name = N'dbo',
  @level1type = N'TABLE',
  @level1name = N'People',
  @level2type = N 'COLUMN',
  @level2name = N 'ID_Num'
GO
  EXEC sys.sp_addextendedproperty @name = N'MS_Description',
  @value = N'家庭住址',
  @level0type = N'SCHEMA',
  @level0name = N'dbo',
  @level1type = N'TABLE',
  @level1name = N'People',
  @level2type = N 'COLUMN',
  @level2name = N'Address'
GO
  EXEC sys.sp_addextendedproperty @name = N'MS_Description',
  @value = N'联系方式',
  @level0type = N'SCHEMA',
  @level0name = N'dbo',
  @level1type = N'TABLE',
  @level1name = N'People',
  @level2type = N 'COLUMN',
  @level2name = N 'Tel_No'
GO
  EXEC sys.sp_addextendedproperty @name = N'MS_Description',
  @value = N'户籍变更时间',
  @level0type = N'SCHEMA',
  @level0name = N'dbo',
  @level1type = N'TABLE',
  @level1name = N'People',
  @level2type = N 'COLUMN',
  @level2name = N'Date'
GO
  EXEC sys.sp_addextendedproperty @name = N'MS_Description',
  @value = N'限制身份证长度',
  @level0type = N'SCHEMA',
  @level0name = N'dbo',
  @level1type = N'TABLE',
  @level1name = N'People',
  @level2type = N 'CONSTRAINT',
  @level2name = N'CK_ID_Limit'
GO
  EXEC sys.sp_addextendedproperty @name = N'MS_Description',
  @value = N'限制性别取值',
  @level0type = N'SCHEMA',
  @level0name = N'dbo',
  @level1type = N'TABLE',
  @level1name = N'People',
  @level2type = N 'CONSTRAINT',
  @level2name = N'CK_Sex_Limit'
GO
  EXEC sys.sp_addextendedproperty @name = N'MS_Description',
  @value = N'限制号码长度',
  @level0type = N'SCHEMA',
  @level0name = N'dbo',
  @level1type = N'TABLE',
  @level1name = N'People',
  @level2type = N 'CONSTRAINT',
  @level2name = N'CK_Tel_Limit'
GO
  EXEC sys.sp_addextendedproperty @name = N'MS_Description',
  @value = N'身份证号关联',
  @level0type = N'SCHEMA',
  @level0name = N'dbo',
  @level1type = N'TABLE',
  @level1name = N'Rename',
  @level2type = N 'CONSTRAINT',
  @level2name = N'FK_Rename_People'
GO
  USE [master]
GO
  ALTER DATABASE [Manager]
SET
  READ_WRITE
GO
