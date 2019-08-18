CREATE TABLE [dbo].[Users] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [FIO]      VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [JobTitle] VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Login]    VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Password] VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [Barcode]  VARCHAR (500) COLLATE Cyrillic_General_CI_AS NULL,
    [IsAdmin]  BIT           NULL
);




GO

CREATE TRIGGER dbo.Instead_Delete
	ON Users
    INSTEAD OF DELETE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO DeletingLog (Date)
	VALUES (GETDATE());

END