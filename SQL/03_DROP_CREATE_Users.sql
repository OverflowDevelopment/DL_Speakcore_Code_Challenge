USE [Speakcore]
GO

ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_State]
GO

ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_Newsletter]
GO

/****** Object:  Table [dbo].[Users]    Script Date: 5/31/2020 2:07:46 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO

/****** Object:  Table [dbo].[Users]    Script Date: 5/31/2020 2:07:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[StateId] [int] NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Newsletter] [tinyint] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Newsletter]  DEFAULT ((0)) FOR [Newsletter]
GO

ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_State] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateID])
GO

ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_State]
GO

