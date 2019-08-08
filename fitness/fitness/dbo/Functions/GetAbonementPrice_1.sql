CREATE FUNCTION [dbo].[GetAbonementPrice] 
	-- Add the parameters for the stored procedure here
	(@AbonementId	int, 
	@Timestamp		datetime)
	RETURNS int
AS
BEGIN
    -- Insert statements for procedure here
	DECLARE @PRICE float;

	SELECT @PRICE = (SELECT TOP 1  ISNULL(pp.Price, 0)
		FROM PriceDynamic pp INNER JOIN
		AbonementPriceDynamic AS app ON app.PriceDynamicId = pp.Id
		WHERE app.AbonementId = @AbonementId
		AND @Timestamp BETWEEN pp.DateStart AND pp.DateFinish);

	RETURN @Price;
END