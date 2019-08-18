CREATE TABLE [dbo].[CategoryProductMix] (
    [CategoryId] INT NOT NULL,
    [ProductId]  INT NOT NULL,
    CONSTRAINT [FK_CategoryProductMix_Category] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id]),
    CONSTRAINT [FK_CategoryProductMix_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id])
);

