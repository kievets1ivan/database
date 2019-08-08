CREATE TABLE [dbo].[ProductPriceDynamic] (
    [Id]         INT        IDENTITY (1, 1) NOT NULL,
    [ProductId]  INT        NULL,
    [Price]      FLOAT (53) NULL,
    [DateStart]  DATETIME   NULL,
    [DateFinish] DATETIME   NULL,
    CONSTRAINT [PK_ProductPriceDynamic] PRIMARY KEY CLUSTERED ([Id] ASC)
);

