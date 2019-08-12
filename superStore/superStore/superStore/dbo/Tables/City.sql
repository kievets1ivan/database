CREATE TABLE [dbo].[City] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED ([Id] ASC)
);

