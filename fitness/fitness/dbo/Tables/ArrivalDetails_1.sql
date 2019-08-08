CREATE TABLE [dbo].[ArrivalDetails] (
    [Id]         INT        IDENTITY (1, 1) NOT NULL,
    [ArrivalId]  INT        NULL,
    [ProductId]  INT        NULL,
    [Quantity]   FLOAT (53) NULL,
    [Price]      FLOAT (53) NULL,
    [Date]       DATETIME   NULL,
    [SupplierId] INT        NULL
);

