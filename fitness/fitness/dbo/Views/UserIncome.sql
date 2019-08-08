CREATE VIEW dbo.UserIncome
AS
SELECT     c.*, ur.PercentForSales AS PercentForSales, ur.PercentForService AS PercentForServiceValue, ur.PercentForClients AS PercentForClients, 
                      ur.PercentForClients * c.Summ / 100 AS ClientSumm, ur.PercentForService * c.Summ / 100 AS ServiceSumm, 
                      ur.PercentForSales * c.Summ / 100 AS SalesSumm
FROM         dbo.Cash c INNER JOIN
                      dbo.Users u ON c.UserId = u.Id LEFT OUTER JOIN
                      dbo.UserRate ur ON ur.UserId = u.Id