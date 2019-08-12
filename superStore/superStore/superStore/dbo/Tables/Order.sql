CREATE TABLE [dbo].[Order] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [ShipTypeId]   INT            NULL,
    [OrderNumber]  NVARCHAR (MAX) NULL,
    [OrderDate]    DATETIME       NULL,
    [ShippingDate] DATETIME       NULL,
    [ShippingType] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED ([Id] ASC)
);

