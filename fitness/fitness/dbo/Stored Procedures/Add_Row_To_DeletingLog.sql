-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.Add_Row_To_DeletingLog 
	-- Add the parameters for the stored procedure here
	@ActionType nvarchar(10)
AS
BEGIN
	INSERT INTO dbo.DeletingLog ([Date], [Name])
	VALUES (GETDATE(), @ActionType)
END