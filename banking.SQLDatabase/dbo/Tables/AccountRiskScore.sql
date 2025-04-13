CREATE TABLE [dbo].[AccountRiskScore] (
    [AccountRiskScoreId] INT            IDENTITY (1, 1) NOT NULL,
    [AccountId]          INT            NULL,
    [RiskScore]          DECIMAL (5, 2) NOT NULL,
    [AssessmentDate]     DATETIME       DEFAULT (getdate()) NULL,
    [RuleNumber]         INT            NULL,
    PRIMARY KEY CLUSTERED ([AccountRiskScoreId] ASC),
    FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([AccountId]),
    CONSTRAINT [FK_AccountRiskScore_AML_Rules] FOREIGN KEY ([RuleNumber]) REFERENCES [dbo].[AML_Rules] ([RuleNumber])
);


GO

