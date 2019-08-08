CREATE TABLE [dbo].[Suppliers] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [Type]     INT           NULL,
    [Name]     VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Director] VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Phone]    VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Fax]      VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL
);

