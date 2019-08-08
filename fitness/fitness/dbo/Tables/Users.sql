CREATE TABLE [dbo].[Users] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [FIO]      VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [JobTitle] VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Login]    VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Password] VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Barcode]  VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [IsAdmin]  BIT           NULL
);

