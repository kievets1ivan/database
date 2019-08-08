
CREATE PROCEDURE dbo.Clients_GetList
AS
BEGIN
SELECT c.FIO, c.[Id], c.Barcode, dt.[Name] AS Document, s.[Name] AS Source, ct.[Name] AS ClientType, c.DocumentNumber, c.BirthDate, c.DocumentId, c.RegisterDate, c.SourceId, c.TypeId, c.Phone, c.Sex, ca.DateFinish, c.Email, a.[Name] AS AbonementName
FROM Clients AS c INNER JOIN ClientTypes AS ct ON c.[TypeId] = ct.[Id] 
INNER JOIN DocumentType AS dt ON dt.[Id] = c.[DocumentId] 
INNER JOIN AdvertisingSource AS s ON s.[Id] = c.[SourceId] 
LEFT JOIN ClientsAbonements AS ca ON ca.CLientId = c.[Id] AND ca.IsActual = 1 
LEFT JOIN Abonements AS a ON a.[Id] = ca.[AbonementId] 
WHERE a.IsSingle IS NULL OR a.IsSingle = 0
END