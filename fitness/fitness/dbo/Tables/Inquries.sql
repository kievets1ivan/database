CREATE TABLE [dbo].[Inquries] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [Number]     VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Date]       DATETIME      NULL,
    [SupplierId] INT           NULL,
    [State]      INT           NULL
);

