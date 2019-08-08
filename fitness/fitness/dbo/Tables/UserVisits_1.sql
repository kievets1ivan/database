CREATE TABLE [dbo].[UserVisits] (
    [Id]      INT          IDENTITY (1, 1) NOT NULL,
    [UserId]  INT          NULL,
    [TimeOn]  VARCHAR (50) NULL,
    [TimeOff] VARCHAR (50) NULL,
    [Date]    DATETIME     NULL
);

