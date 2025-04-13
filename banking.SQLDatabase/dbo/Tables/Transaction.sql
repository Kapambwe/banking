CREATE TABLE [dbo].[Transaction] (
    [TransactionId]     INT             IDENTITY (1, 1) NOT NULL,
    [AccountId]         INT             NULL,
    [TransactionTypeId] INT             NULL,
    [ChannelId]         INT             NULL,
    [Amount]            DECIMAL (15, 2) NOT NULL,
    [TransactionDate]   DATETIME        DEFAULT (getdate()) NULL,
    [Latitude]          DECIMAL (9, 6)  NULL,
    [Longitude]         DECIMAL (9, 6)  NULL,
    [LoanId]            INT             NULL,
    PRIMARY KEY CLUSTERED ([TransactionId] ASC),
    FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([AccountId]),
    FOREIGN KEY ([ChannelId]) REFERENCES [dbo].[Channel] ([ChannelId]),
    FOREIGN KEY ([LoanId]) REFERENCES [dbo].[Loan] ([LoanId]),
    FOREIGN KEY ([TransactionTypeId]) REFERENCES [dbo].[TransactionType] ([TransactionTypeId])
);


GO

