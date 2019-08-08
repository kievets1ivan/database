CREATE TABLE [dbo].[AdvertisingSource] (
    [Id]   INT          IDENTITY (1, 1) NOT NULL,
    [Name] VARCHAR (50) COLLATE Cyrillic_General_CI_AS NULL,
    CONSTRAINT [PK_AdvertisingSource] PRIMARY KEY CLUSTERED ([Id] ASC)
);

