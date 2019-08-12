CREATE TABLE [dbo].[Orders$] (
    [Row ID]        FLOAT (53)     NULL,
    [Order ID]      NVARCHAR (255) NULL,
    [Order Date]    DATETIME       NULL,
    [Ship Date]     DATETIME       NULL,
    [Ship Mode]     NVARCHAR (255) NULL,
    [Customer ID]   NVARCHAR (255) NULL,
    [Customer Name] NVARCHAR (255) NULL,
    [Segment]       NVARCHAR (255) NULL,
    [Country]       NVARCHAR (255) NULL,
    [City]          NVARCHAR (255) NULL,
    [State]         NVARCHAR (255) NULL,
    [Postal Code]   FLOAT (53)     NULL,
    [Region]        NVARCHAR (255) NULL,
    [Product ID]    NVARCHAR (255) NULL,
    [Category]      NVARCHAR (255) NULL,
    [Sub-Category]  NVARCHAR (255) NULL,
    [Product Name]  NVARCHAR (255) NULL,
    [Sales]         FLOAT (53)     NULL,
    [Quantity]      FLOAT (53)     NULL,
    [Discount]      FLOAT (53)     NULL,
    [Profit]        FLOAT (53)     NULL
);

