CREATE TABLE [dbo].[Region] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED ([Id] ASC)
);

