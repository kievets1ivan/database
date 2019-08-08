CREATE TABLE [dbo].[UserAdministrator] (
    [Id]              INT IDENTITY (1, 1) NOT NULL,
    [UserId]          INT NULL,
    [AdministratorId] INT NULL,
    CONSTRAINT [PK_UserAdministrator] PRIMARY KEY CLUSTERED ([Id] ASC)
);

