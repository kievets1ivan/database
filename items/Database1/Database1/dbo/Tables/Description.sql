CREATE TABLE [dbo].[Description] (
    [Id]          INT           NOT NULL,
    [Color]       NVARCHAR (50) NULL,
    [Height]      INT           NULL,
    [Description] NVARCHAR (50) NULL,
    [Width]       INT           NULL,
    CONSTRAINT [PK_Description] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Description_Product] FOREIGN KEY ([Id]) REFERENCES [dbo].[Product] ([Id])
);

