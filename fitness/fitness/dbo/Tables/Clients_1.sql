CREATE TABLE [dbo].[Clients] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [TypeId]         INT            NULL,
    [DocumentId]     INT            NULL,
    [SourceId]       INT            NULL,
    [FIO]            VARCHAR (500)  COLLATE Cyrillic_General_CI_AS NULL,
    [Barcode]        VARCHAR (50)   COLLATE Cyrillic_General_CI_AS NULL,
    [RegisterDate]   DATETIME       NULL,
    [Photo]          IMAGE          NULL,
    [DocumentNumber] VARCHAR (50)   COLLATE Cyrillic_General_CI_AS NULL,
    [BirthDate]      DATETIME       NULL,
    [Phone]          VARCHAR (50)   COLLATE Cyrillic_General_CI_AS NULL,
    [Sex]            INT            NULL,
    [Email]          NVARCHAR (100) NULL
);




GO
CREATE NONCLUSTERED INDEX [IX_DocumentType]
    ON [dbo].[Clients]([DocumentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ClientType]
    ON [dbo].[Clients]([TypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Clients_FIO]
    ON [dbo].[Clients]([FIO] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Clients_Barcode]
    ON [dbo].[Clients]([Barcode] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_AdvertisingType]
    ON [dbo].[Clients]([SourceId] ASC);


GO

CREATE TRIGGER [dbo].[Action_Instead] 
	ON [dbo].[Clients]
	INSTEAD OF DELETE, INSERT, UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @ActionType nvarchar(10)

	IF NOT EXISTS (SELECT * FROM deleted) AND EXISTS (SELECT * FROM inserted)
      BEGIN
         SET @ActionType = 'Insert'
      END

   IF EXISTS (SELECT * FROM deleted) AND EXISTS (SELECT * FROM inserted)
      BEGIN
         SET @ActionType = 'Update'
      END

   IF EXISTS (SELECT * FROM deleted) AND NOT EXISTS (SELECT * FROM inserted)
      BEGIN
         SET @ActionType = 'Delete'
      END

    EXEC dbo.Add_Row_To_DeletingLog @ActionType

END