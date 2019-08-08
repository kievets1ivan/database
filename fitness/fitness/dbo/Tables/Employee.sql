CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
    [Department_Id] INT NULL, 
    [Chief_Id] INT NULL, 
    [Name] NVARCHAR(50) NULL, 
    [Salary] MONEY NULL, 
    CONSTRAINT [FK_Employee_ToEmployee] FOREIGN KEY (Id) REFERENCES Employee(Chief_Id)
)
