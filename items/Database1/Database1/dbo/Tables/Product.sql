CREATE TABLE [dbo].[Product] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

CREATE TRIGGER [dbo].[DeleteProductTrg] ON [dbo].[Product] 
   INSTEAD OF DELETE 
AS 
BEGIN
	
	DECLARE @DelProductId int

	SELECT @DelProductId = (SELECT Id
							FROM deleted)

    DELETE FROM [Description]
	Where Id = @DelProductId

END