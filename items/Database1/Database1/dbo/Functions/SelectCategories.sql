
CREATE FUNCTION [dbo].[SelectCategories] 
(
	@ProductId int
)
RETURNS nvarchar(MAX)
AS
BEGIN
	
	DECLARE @result nvarchar(MAX)

	SET @result = STUFF((SELECT ',' + cat.[Name]
			FROM Category cat INNER JOIN CategoryProductMix cpm ON cat.Id = cpm.CategoryId
			INNER JOIN Product pd ON pd.Id = cpm.ProductId
			WHERE pd.Id = @ProductId
			FOR XML PATH('')), 1, 1, '')

	RETURN @result

END