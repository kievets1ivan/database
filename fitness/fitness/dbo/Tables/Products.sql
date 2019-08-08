CREATE TABLE [dbo].[Products] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [GroupId]     INT           NULL,
    [DimensionId] INT           NULL,
    [Name]        VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Barcode]     VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Description] VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Price]       FLOAT (53)    NULL
);

