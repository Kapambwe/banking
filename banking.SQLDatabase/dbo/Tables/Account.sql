CREATE TABLE [dbo].[Account] (
    [AccountId]     INT             IDENTITY (1, 1) NOT NULL,
    [AccountNumber] VARCHAR (20)    NOT NULL,
    [Balance]       DECIMAL (15, 2) DEFAULT ((0.00)) NULL,
    [AccountTypeId] INT             NULL,
    [PersonId]      INT             NULL,
    PRIMARY KEY CLUSTERED ([AccountId] ASC),
    FOREIGN KEY ([AccountTypeId]) REFERENCES [dbo].[AccountType] ([AccountTypeId]),
    FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    UNIQUE NONCLUSTERED ([AccountNumber] ASC)
);


GO

