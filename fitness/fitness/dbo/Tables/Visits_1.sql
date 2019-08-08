CREATE TABLE [dbo].[Visits] (
    [Id]         INT          IDENTITY (1, 1) NOT NULL,
    [ClientId]   INT          NULL,
    [Date]       DATETIME     NULL,
    [Time]       VARCHAR (50) COLLATE Cyrillic_General_CI_AS NULL,
    [Type]       INT          NULL,
    [BoxId]      INT          NULL,
    [TimeOff]    VARCHAR (50) NULL,
    [WithoutKey] BIT          NULL,
    [CoachId]    INT          NULL
);

