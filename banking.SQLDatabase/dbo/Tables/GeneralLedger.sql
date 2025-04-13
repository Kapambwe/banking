CREATE TABLE [dbo].[GeneralLedger] (
    [EntryId]       INT             IDENTITY (1, 1) NOT NULL,
    [AccountId]     INT             NULL,
    [TransactionId] INT             NULL,
    [Debit]         DECIMAL (15, 2) DEFAULT ((0.00)) NULL,
    [Credit]        DECIMAL (15, 2) DEFAULT ((0.00)) NULL,
    [EntryDate]     DATETIME        DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([EntryId] ASC),
    FOREIGN KEY ([AccountId]) REFERENCES [dbo].[ChartOfAccounts] ([AccountId]),
    FOREIGN KEY ([TransactionId]) REFERENCES [dbo].[Transaction] ([TransactionId])
);


GO

