CREATE TABLE [dbo].[Department]
(
	[Id] INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
    [Name] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_Department_ToEmployee] FOREIGN KEY (Id) REFERENCES Employee(Department_Id)
)
