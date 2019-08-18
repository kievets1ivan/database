CREATE TABLE [dbo].[Price] (
    [Id]         INT      IDENTITY (1, 1) NOT NULL,
    [DateFrom]   DATETIME NULL,
    [DateFinish] DATETIME NULL,
    [Price]      MONEY    NULL,
    [ProductId]  INT      NOT NULL,
    CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Price_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id])
);

