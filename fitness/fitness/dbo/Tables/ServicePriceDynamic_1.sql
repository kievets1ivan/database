CREATE TABLE [dbo].[ServicePriceDynamic] (
    [PriceDynamicId] INT NOT NULL,
    [ServiceId]      INT NULL,
    CONSTRAINT [PK_ServicePriceDynamic] PRIMARY KEY CLUSTERED ([PriceDynamicId] ASC)
);

