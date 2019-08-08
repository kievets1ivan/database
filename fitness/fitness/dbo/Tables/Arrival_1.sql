CREATE TABLE [dbo].[Arrival] (
    [Id]         INT          IDENTITY (1, 1) NOT NULL,
    [Number]     VARCHAR (50) COLLATE Cyrillic_General_CI_AS NULL,
    [InquiryId]  INT          NULL,
    [SupplierId] INT          NULL,
    [Date]       DATETIME     NULL,
    CONSTRAINT [PK_Arrival] PRIMARY KEY CLUSTERED ([Id] ASC)
);

