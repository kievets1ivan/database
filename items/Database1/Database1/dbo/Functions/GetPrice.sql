
CREATE FUNCTION GetPrice
(
	@ProductId int
)
RETURNS money
AS
BEGIN
	DECLARE @result money

	SET @result = (SELECT TOP 1 Price
				FROM Price 
				WHERE ProductId = @ProductId and (DateFinish >= GETDATE() or DateFinish is null))


	RETURN @result

END