CREATE TABLE [dbo].[Sales] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [UserId]       INT           NULL,
    [ProductId]    INT           NULL,
    [ClientId]     INT           NULL,
    [Date]         DATETIME      NULL,
    [ServiceId]    INT           NULL,
    [Time]         VARCHAR (50)  NULL,
    [Quantity]     INT           NULL,
    [IsDeleted]    BIT           NULL,
    [DeleteDate]   DATETIME      NULL,
    [DeleteReason] VARCHAR (500) NULL
);

