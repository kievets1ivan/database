CREATE TABLE [dbo].[AccessRoles] (
    [Id]   INT          IDENTITY (1, 1) NOT NULL,
    [Name] VARCHAR (50) COLLATE Cyrillic_General_CI_AS NULL,
    CONSTRAINT [PK_AccessRoles] PRIMARY KEY CLUSTERED ([Id] ASC)
);

