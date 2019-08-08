CREATE TABLE [dbo].[Prices] (
    [Id]         INT        IDENTITY (1, 1) NOT NULL,
    [ProductId]  INT        NULL,
    [Price]      FLOAT (53) NULL,
    [DateStart]  DATETIME   NULL,
    [DateFinish] DATETIME   NULL
);

