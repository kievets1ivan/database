CREATE TABLE [dbo].[ServiceSales] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [ServiceId]    INT           NULL,
    [UserId]       INT           NULL,
    [Date]         DATETIME      NULL,
    [Time]         VARCHAR (50)  NULL,
    [Quantity]     INT           NOT NULL,
    [IsDeleted]    BIT           NULL,
    [DeleteDate]   DATETIME      NULL,
    [DeleteReason] VARCHAR (500) NULL
);

