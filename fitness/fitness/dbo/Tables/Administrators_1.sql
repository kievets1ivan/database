CREATE TABLE [dbo].[Administrators] (
    [Id]      INT          IDENTITY (1, 1) NOT NULL,
    [FIO]     VARCHAR (50) NULL,
    [IsTired] BIT          NULL,
    CONSTRAINT [PK_Administrators] PRIMARY KEY CLUSTERED ([Id] ASC)
);

