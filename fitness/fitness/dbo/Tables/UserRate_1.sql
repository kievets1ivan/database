CREATE TABLE [dbo].[UserRate] (
    [Id]                INT          IDENTITY (1, 1) NOT NULL,
    [UserId]            INT          NULL,
    [Constant]          DECIMAL (18) NULL,
    [PercentForClients] FLOAT (53)   NULL,
    [PercentForSales]   FLOAT (53)   NULL,
    [PercentForService] FLOAT (53)   NULL,
    [PercentForFitness] FLOAT (53)   NULL,
    [PercentForMassage] FLOAT (53)   NULL
);

