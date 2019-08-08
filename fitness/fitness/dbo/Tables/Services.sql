CREATE TABLE [dbo].[Services] (
    [Id]          INT          IDENTITY (1, 1) NOT NULL,
    [DimensionId] INT          NULL,
    [Name]        VARCHAR (50) COLLATE Cyrillic_General_CI_AS NULL,
    [CostPerUnit] FLOAT (53)   NULL,
    [Type]        INT          NULL
);

