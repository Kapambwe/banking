CREATE TABLE [dbo].[TransactionRiskScore] (
    [TransactionRiskScoreId] INT            IDENTITY (1, 1) NOT NULL,
    [TransactionId]          INT            NULL,
    [RiskScore]              DECIMAL (5, 2) NOT NULL,
    [AssessmentDate]         DATETIME       DEFAULT (getdate()) NULL,
    [RuleNumber]             INT            NULL,
    PRIMARY KEY CLUSTERED ([TransactionRiskScoreId] ASC),
    FOREIGN KEY ([TransactionId]) REFERENCES [dbo].[Transaction] ([TransactionId]),
    CONSTRAINT [FK_TransactionRiskScore_AML_Rules] FOREIGN KEY ([RuleNumber]) REFERENCES [dbo].[AML_Rules] ([RuleNumber])
);


GO

