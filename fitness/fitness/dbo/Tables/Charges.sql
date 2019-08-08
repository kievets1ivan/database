CREATE TABLE [dbo].[Charges] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [GroupId]         INT           NULL,
    [Name]            VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Summ]            FLOAT (53)    NULL,
    [Date]            DATETIME      NULL,
    [AdministratorId] INT           NULL
);

