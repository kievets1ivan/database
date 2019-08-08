
CREATE PROCEDURE [dbo].[Clients_GetListByBarcode]
	@BARCODE		VARCHAR(100)
AS
BEGIN
SELECT c.FIO, c.[Id], c.Barcode, dt.[Name] AS Document, c.Email, s.[Name] AS Source, ct.[Name] AS ClientType, c.DocumentNumber, c.BirthDate, c.DocumentId, c.RegisterDate, c.SourceId, c.TypeId, c.Phone, c.Sex, ca.DateFinish, a.[Name] AS AbonementName 
FROM Clients AS c INNER JOIN ClientTypes AS ct ON c.[TypeId] = ct.[Id] 
INNER JOIN DocumentType AS dt ON dt.[Id] = c.[DocumentId] 
INNER JOIN AdvertisingSource AS s ON s.[Id] = c.[SourceId] 
INNER JOIN ClientsAbonements AS ca ON ca.CLientId = c.[Id] AND ca.IsActual = 1 
INNER JOIN Abonements AS a ON a.[Id] = ca.[AbonementId] 
WHERE Barcode = @BARCODE
END