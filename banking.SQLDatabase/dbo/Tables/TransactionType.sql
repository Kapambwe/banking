CREATE TABLE [dbo].[TransactionType] (
    [TransactionTypeId] INT          IDENTITY (1, 1) NOT NULL,
    [TypeName]          VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([TransactionTypeId] ASC)
);


GO

