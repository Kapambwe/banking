CREATE TABLE [dbo].[Loan] (
    [LoanId]          INT             IDENTITY (1, 1) NOT NULL,
    [LoanNumber]      VARCHAR (20)    NOT NULL,
    [LoanTypeId]      INT             NULL,
    [PersonId]        INT             NULL,
    [PrincipalAmount] DECIMAL (15, 2) NOT NULL,
    [InterestRate]    DECIMAL (5, 2)  NOT NULL,
    [StartDate]       DATE            NOT NULL,
    [EndDate]         DATE            NOT NULL,
    PRIMARY KEY CLUSTERED ([LoanId] ASC),
    FOREIGN KEY ([LoanTypeId]) REFERENCES [dbo].[LoanType] ([LoanTypeId]),
    FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    UNIQUE NONCLUSTERED ([LoanNumber] ASC)
);


GO

