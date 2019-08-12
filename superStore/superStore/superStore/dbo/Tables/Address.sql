CREATE TABLE [dbo].[Address] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [RegionId]   INT            NULL,
    [StateId]    INT            NULL,
    [CityId]     INT            NULL,
    [PostalCode] NVARCHAR (50)  NULL,
    [Country]    NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Address_City] FOREIGN KEY ([CityId]) REFERENCES [dbo].[City] ([Id]),
    CONSTRAINT [FK_Address_Region] FOREIGN KEY ([RegionId]) REFERENCES [dbo].[Region] ([Id]),
    CONSTRAINT [FK_Address_State] FOREIGN KEY ([StateId]) REFERENCES [dbo].[State] ([Id])
);

