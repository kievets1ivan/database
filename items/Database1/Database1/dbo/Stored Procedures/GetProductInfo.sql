
CREATE PROCEDURE [dbo].[GetProductInfo]

	@ProductName nvarchar(50)
AS
BEGIN
	
	SELECT *
	FROM dbo.ProductInfo info
	WHERE info.[Name] LIKE '%' + @ProductName +'%'
END