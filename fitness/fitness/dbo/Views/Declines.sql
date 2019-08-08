CREATE VIEW dbo.Declines
AS
SELECT     *
FROM         (SELECT     'Продажа абонементов' AS 'Group', [Date], Summ, Clients.FIO AS 'Name', u.FIO AS 'User', '' AS [Time], ai.Summ AS Price, 
                                              '' AS DimensionName, 1 AS 'Quantity', 0 AS [Type], ai.IsDeleted, ai.DeleteDate, ai.DeleteReason
                       FROM          AbonementIncome AS ai INNER JOIN
                                              Clients ON Clients.[Id] = ai.ClientId INNER JOIN
                                              Users AS u ON u.[Id] = ai.UserId INNER JOIN
                                              Abonements AS a ON a.[Id] = ai.AbonementId
                       WHERE      ai.IsDeleted = 1
                       UNION
                       SELECT     'Продажа товаров' AS 'Group', [Date], (s.Quantity * p.Price) AS Summ, p.[Name] AS 'Name', u.FIO AS 'User', s.[Time], p.Price, 
                                             d .[Name] AS DimensionName, s.Quantity, 1 AS [Type], s.IsDeleted, s.DeleteDate, s.DeleteReason
                       FROM         Sales AS s INNER JOIN
                                             Products AS p ON s.[ProductId] = p.[Id] INNER JOIN
                                             Users AS u ON u.[Id] = s.UserId INNER JOIN
                                             Dimensions AS d ON d .[Id] = p.DimensionId
                       WHERE     s.IsDeleted = 1
                       UNION
                       SELECT     'Продажа услуг' AS 'Group', [Date], (ss.Quantity * s.CostPerUnit) AS Summ, s.[Name] AS 'Name', u.FIO AS 'User', ss.[Time], 
                                             s.CostPerUnit AS Price, d .[Name] AS DimensionName, ss.Quantity, 2 AS [Type], ss.IsDeleted, ss.DeleteDate, ss.DeleteReason
                       FROM         ServiceSales AS ss INNER JOIN
                                             Services AS s ON ss.[ServiceId] = s.[Id] INNER JOIN
                                             Users AS u ON u.[Id] = ss.UserId INNER JOIN
                                             Dimensions AS d ON d .[Id] = s.DimensionId
                       WHERE     ss.IsDeleted = 1) DERIVEDTBL