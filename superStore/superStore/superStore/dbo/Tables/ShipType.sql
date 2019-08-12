CREATE TABLE [dbo].[ShipType] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_ShipType] PRIMARY KEY CLUSTERED ([Id] ASC)
);

