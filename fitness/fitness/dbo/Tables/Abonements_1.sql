CREATE TABLE [dbo].[Abonements] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [Name]           VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Length]         INT           NULL,
    [Cost]           FLOAT (53)    NULL,
    [AbonementGroup] INT           NULL,
    [LessonsCount]   INT           NULL,
    [IsSingle]       BIT           NULL,
    CONSTRAINT [PK_Abonements] PRIMARY KEY CLUSTERED ([Id] ASC)
);

