CREATE TABLE [dbo].[PriceDynamic] (
    [Id]         INT        IDENTITY (1, 1) NOT NULL,
    [DateStart]  DATETIME   NULL,
    [DateFinish] DATETIME   NULL,
    [Price]      FLOAT (53) NULL,
    CONSTRAINT [PK_PriceDynamic] PRIMARY KEY CLUSTERED ([Id] ASC)
);

