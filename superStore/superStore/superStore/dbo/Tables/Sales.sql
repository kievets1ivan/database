CREATE TABLE [dbo].[Sales] (
    [Id]       INT        IDENTITY (1, 1) NOT NULL,
    [Sales]    FLOAT (53) NULL,
    [Quantity] INT        NULL,
    [Discount] FLOAT (53) NULL,
    [Profit]   FLOAT (53) NULL,
    CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED ([Id] ASC)
);

