CREATE VIEW dbo.v_Clients
AS
SELECT     b.Id, b.TypeId, b.DocumentId, b.SourceId, b.FIO, b.Barcode, b.RegisterDate, b.Photo, b.DocumentNumber, b.BirthDate, b.Phone, b.Sex, b.ClientId, 
                      b.AbonementId, b.DateFinish, a.Id AS Expr1, a.Name, a.Length, a.Cost, a.AbonementGroup, a.LessonsCount, a.IsSingle
FROM         (SELECT     c.Id, c.TypeId, c.DocumentId, c.SourceId, c.FIO, c.Barcode, c.RegisterDate, c.Photo, c.DocumentNumber, c.BirthDate, c.Phone, c.Sex, 
                                              ca.ClientId, ca.AbonementId, ca.DateFinish
                       FROM          dbo.Clients AS c INNER JOIN
                                              dbo.ClientsAbonements AS ca ON ca.ClientId = c.Id AND ca.DateFinish IN
                                                  (SELECT     MAX(DateFinish) AS Expr1
                                                    FROM          dbo.ClientsAbonements
                                                    WHERE      (ClientId = c.Id))) AS b INNER JOIN
                      dbo.Abonements AS a ON a.Id = b.AbonementId