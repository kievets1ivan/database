CREATE TABLE [dbo].[AbonementPriceDynamic] (
    [PriceDynamicId] INT NOT NULL,
    [AbonementId]    INT NULL,
    CONSTRAINT [PK_AbonementPriceDynamic] PRIMARY KEY CLUSTERED ([PriceDynamicId] ASC)
);

