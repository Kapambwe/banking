CREATE TABLE [dbo].[LoanPayment] (
    [PaymentId]     INT             IDENTITY (1, 1) NOT NULL,
    [LoanId]        INT             NULL,
    [PaymentAmount] DECIMAL (15, 2) NOT NULL,
    [PaymentDate]   DATE            NOT NULL,
    PRIMARY KEY CLUSTERED ([PaymentId] ASC),
    FOREIGN KEY ([LoanId]) REFERENCES [dbo].[Loan] ([LoanId])
);


GO

