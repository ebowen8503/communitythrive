-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Erica Bowen
-- Create date: 12/08/2016
-- Description:	Delete User
-- =============================================
CREATE PROCEDURE sp_deleteUser
	-- Add the parameters for the stored procedure here
	@roleID int,
	@companyID int,
	@emailAddress nvarchar (150),
	@userPassword nvarchar (150),
	@firstName nvarchar (100),
	@lastName nvarchar(100),
	@phoneNumber nvarchar (100),
	@userAddress nvarchar (200),
	@userTypeID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		DECLARE @v_error VARCHAR(255),
		@v_errorNo INT
	BEGIN TRY

		DELETE FROM ctUser

		WHERE
			emailAddress=@emailAddress

	END TRY
	BEGIN CATCH 

		SELECT @v_error = ERROR_MESSAGE()
		SELECT @v_errorNo = ERROR_NUMBER()

		RAISERROR('Database error occured %s',16,1,@v_error)
		RETURN -20000

	END CATCH
END
GO
