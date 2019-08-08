CREATE TABLE [dbo].[AbonementIncome] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [ClientId]     INT           NULL,
    [AbonementId]  INT           NULL,
    [UserId]       INT           NULL,
    [Date]         DATETIME      NULL,
    [Summ]         FLOAT (53)    NULL,
    [IsDeleted]    BIT           NULL,
    [DeleteDate]   DATETIME      NULL,
    [DeleteReason] VARCHAR (500) NULL,
    CONSTRAINT [PK_AbonementIncome] PRIMARY KEY CLUSTERED ([Id] ASC)
);

