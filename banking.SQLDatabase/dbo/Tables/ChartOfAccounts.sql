CREATE TABLE [dbo].[ChartOfAccounts] (
    [AccountId]     INT           IDENTITY (1, 1) NOT NULL,
    [AccountNumber] VARCHAR (20)  NOT NULL,
    [AccountName]   VARCHAR (255) NOT NULL,
    [CategoryId]    INT           NULL,
    PRIMARY KEY CLUSTERED ([AccountId] ASC),
    FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[AccountCategory] ([CategoryId]),
    UNIQUE NONCLUSTERED ([AccountNumber] ASC)
);


GO

