
CREATE FUNCTION [dbo].[ConvertString]
(
	-- Add the parameters for the function here
	@String	nvarchar(50)
)
RETURNS nvarchar(50)
AS
BEGIN
	
	RETURN REVERSE(@STring)

END