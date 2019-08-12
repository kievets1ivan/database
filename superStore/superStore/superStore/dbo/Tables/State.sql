CREATE TABLE [dbo].[State] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NULL,
    CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED ([Id] ASC)
);

