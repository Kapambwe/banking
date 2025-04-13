CREATE TABLE [dbo].[AML_Rules] (
    [ID]          INT            IDENTITY (1, 1) NOT NULL,
    [RuleNumber]  INT            NOT NULL,
    [RuleName]    NVARCHAR (255) NOT NULL,
    [Description] NVARCHAR (MAX) NOT NULL,
    [Reason]      NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK__AML_Rule__3214EC2783A398D6] PRIMARY KEY CLUSTERED ([RuleNumber] ASC)
);


GO

