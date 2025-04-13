CREATE TABLE [dbo].[LoanType] (
    [LoanTypeId] INT          IDENTITY (1, 1) NOT NULL,
    [TypeName]   VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([LoanTypeId] ASC)
);


GO

