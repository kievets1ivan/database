CREATE TABLE [dbo].[Customer] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [CustomerNumber]  NVARCHAR (MAX) NULL,
    [Name]            NVARCHAR (MAX) NULL,
    [CustomerSegment] NVARCHAR (MAX) NULL,
    [AddressId]       INT            NULL,
    [Country]         NVARCHAR (MAX) NULL,
    [City]            NVARCHAR (MAX) NULL,
    [State]           NVARCHAR (MAX) NULL,
    [PostCode]        NVARCHAR (MAX) NULL,
    [Region]          NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([Id] ASC)
);

