
CREATE FUNCTION [dbo].[GetProductPrice] 
	-- Add the parameters for the stored procedure here
	(@ProductId	int, 
	@Timestamp		datetime)
	RETURNS int
AS
BEGIN
    -- Insert statements for procedure here
	DECLARE @PRICE float;

	SELECT @PRICE = ISNULL(pp.Price, 0)
		FROM ProductPriceDynamic pp
		WHERE pp.ProductId = @ProductId
		AND @Timestamp BETWEEN pp.DateStart AND pp.DateFinish;

	RETURN @Price;
END