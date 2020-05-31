USE [Speakcore]
GO

/****** Object:  StoredProcedure [dbo].[usp_InsertUser]    Script Date: 5/31/2020 2:08:05 PM ******/
DROP PROCEDURE [dbo].[usp_InsertUser]
GO

/****** Object:  StoredProcedure [dbo].[usp_InsertUser]    Script Date: 5/31/2020 2:08:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[usp_InsertUser] 

	@FirstName varchar(50),
	@LastName varchar(50),
	@StateId tinyint,
	@Email varchar(100)
AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO Users (FirstName, LastName, StateId, Email)
	VALUES (@FirstName, @LastName, @StateId, @Email)
END
GO

