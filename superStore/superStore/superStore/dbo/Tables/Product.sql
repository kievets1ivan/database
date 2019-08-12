CREATE TABLE [dbo].[Product] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [ProductNumber] NVARCHAR (MAX) NULL,
    [Category]      NVARCHAR (MAX) NULL,
    [SubCategory]   NVARCHAR (MAX) NULL,
    [ProductName]   NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id] ASC)
);

