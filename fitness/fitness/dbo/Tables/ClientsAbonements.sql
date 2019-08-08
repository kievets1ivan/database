CREATE TABLE [dbo].[ClientsAbonements] (
    [Id]          INT        IDENTITY (1, 1) NOT NULL,
    [ClientId]    INT        NULL,
    [AbonementId] INT        NULL,
    [DateStart]   DATETIME   NULL,
    [DateFinish]  DATETIME   NULL,
    [IsActual]    BIT        NULL,
    [Summ]        FLOAT (53) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_ClientID]
    ON [dbo].[ClientsAbonements]([ClientId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_AbonementId]
    ON [dbo].[ClientsAbonements]([AbonementId] ASC);

