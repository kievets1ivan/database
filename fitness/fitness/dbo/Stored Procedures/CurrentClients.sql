
CREATE PROCEDURE dbo.CurrentClients
	-- Add the parameters for the stored procedure here
	@Date_start datetime,
	@Date_finish datetime
AS
BEGIN
	
	SELECT *
	FROM dbo.v_Clients v
	WHERE v.RegisterDate >= @Date_start AND v.DateFinish <= @Date_finish

END