USE [Speakcore]
GO

/****** Object:  Table [dbo].[Password]    Script Date: 5/31/2020 2:06:59 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Password]') AND type in (N'U'))
DROP TABLE [dbo].[Password]
GO

/****** Object:  Table [dbo].[Password]    Script Date: 5/31/2020 2:06:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Password](
	[PasswordId] [int] IDENTITY(1,1) NOT NULL,
	[Password] [varchar](50) NOT NULL
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Password] VALUES ('Speakcore')