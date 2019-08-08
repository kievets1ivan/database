CREATE FUNCTION [dbo].[GetServicePrice] 
	-- Add the parameters for the stored procedure here
	(@ServiceId	int, 
	@Timestamp		datetime)
	RETURNS int
AS
BEGIN
    -- Insert statements for procedure here
	DECLARE @PRICE float;

	SELECT @PRICE = ISNULL(pp.Price, 0)
		FROM PriceDynamic pp INNER JOIN
		ServicePriceDynamic AS spp ON spp.PriceDynamicId = pp.Id
		WHERE spp.ServiceId = @ServiceId
		AND @Timestamp BETWEEN pp.DateStart AND pp.DateFinish;

	RETURN @Price;
END