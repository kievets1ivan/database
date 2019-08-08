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

