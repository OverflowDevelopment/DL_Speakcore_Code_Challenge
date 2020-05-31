USE [Speakcore]
GO

/****** Object:  StoredProcedure [dbo].[usp_ValidatePassword]    Script Date: 5/31/2020 2:08:24 PM ******/
DROP PROCEDURE [dbo].[usp_ValidatePassword]
GO

/****** Object:  StoredProcedure [dbo].[usp_ValidatePassword]    Script Date: 5/31/2020 2:08:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[usp_ValidatePassword]
	@input varchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT COUNT(PasswordId) FROM Password WHERE Password = @input
	RETURN
END
GO

