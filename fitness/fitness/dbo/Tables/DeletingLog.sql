CREATE TABLE [dbo].[DeletingLog] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Type] INT           NULL,
    [Name] VARCHAR (500) NULL,
    [Date] DATETIME      NULL,
    [User] VARCHAR (500) NULL
);

