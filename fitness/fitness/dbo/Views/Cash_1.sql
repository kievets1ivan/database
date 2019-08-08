

CREATE VIEW [dbo].[Cash]
AS
(SELECT DISTINCT 
                                                    ai.Date, ai.Id, c.FIO AS Name, a.Name AS AName, u.FIO AS [User], ai.ClientId, ai.AbonementId, ai.UserId, '' AS DimensionName, '' AS Time, ai.Summ AS Price, 1 AS 'Quantity', ai.Summ, 0 AS Type, 
                                                    'Продажа абонементов' AS 'Group', '' AS GroupName
                          FROM            dbo.AbonementIncome AS ai INNER JOIN
                                                    dbo.Clients AS c ON c.Id = ai.ClientId INNER JOIN
                                                    dbo.Abonements AS a ON a.Id = ai.AbonementId INNER JOIN
                                                    dbo.Users AS u ON u.Id = ai.UserId
                          WHERE        (ai.IsDeleted = 0)
                          UNION
                          SELECT        ss.Date, ss.Id, '' AS Name, s.Name AS AName, u.FIO AS [User], 0 AS ClientId, s.Id AS AbonementId, ss.UserId, d.Name AS DimensionName, ss.Time, dbo.GetServicePrice(s.Id, ss.Date) AS Price, 
                                                   ss.Quantity, dbo.GetServicePrice(s.Id, ss.Date) * ss.Quantity AS Summ, 2 AS Type, 'Продажа услуг' AS 'Group', '' AS GroupName
                          FROM            dbo.ServiceSales AS ss INNER JOIN
                                                   dbo.Services AS s ON s.Id = ss.ServiceId INNER JOIN
                                                   dbo.Dimensions AS d ON d.Id = s.DimensionId INNER JOIN
                                                   dbo.Users AS u ON u.Id = ss.UserId
                          WHERE        (ss.IsDeleted = 0)
                          UNION
                          SELECT        s.Date, s.Id, '' AS Name, p.Name AS AName, u.FIO AS 'User', 0 AS ClientId, p.Id AS AbonementId, s.UserId, d.Name AS DimensionName, s.Time, 
						  dbo.GetProductPrice(p.Id, s.Date) AS Price, s.Quantity, dbo.GetProductPrice(p.Id, s.Date) * s.Quantity AS Summ, 1 AS Type, 'Продажа товаров' AS 'Group', '' AS GroupName
                          FROM            dbo.Sales AS s INNER JOIN
                                                   dbo.Products AS p ON s.ProductId = p.Id INNER JOIN
                                                   dbo.Users AS u ON u.Id = s.UserId INNER JOIN
                                                   dbo.ProductGroup AS pg ON pg.Id = p.GroupId INNER JOIN
                                                   dbo.Dimensions AS d ON d.Id = p.DimensionId
                          WHERE        (s.IsDeleted = 0)
                          UNION
                          SELECT        c.Date, c.Id, '' AS Name, c.Name AS AName, '' AS [User], 0 AS ClientId, c.GroupId AS AbonementId, 0 AS UserId, '' AS DimensionName, '' AS Time, 0 AS Price, 0 AS Quantity, - (1 * c.Summ) AS Summ, 
                                                   3 AS Type, 'Расходы' AS 'Group', cg.Name AS GroupName
                          FROM            dbo.Charges AS c INNER JOIN
                                                   dbo.ChargeGroup AS cg ON cg.Id = c.GroupId)
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'Cash';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 3
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 5
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'Cash';

