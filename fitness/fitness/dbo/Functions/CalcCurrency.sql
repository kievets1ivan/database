
CREATE FUNCTION dbo.CalcCurrency 
(
	-- Add the parameters for the function here
	@UAH	float
)
RETURNS float
AS
BEGIN
	-- Declare the return variable here
	RETURN @UAH / 25

END