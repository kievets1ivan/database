CREATE PROCEDURE [dbo].[GetCompleteClientsAbonements]
	@CLIENT_ID  int
AS
BEGIN
	
	select v.* from ClientsView v
	LEFT JOIN ClientsAbonements ca ON ca.ClientId = v.Id AND ca.DateFinish > GETDATE()
	WHERE v.Id = @CLIENT_ID

END