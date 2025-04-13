CREATE TABLE [dbo].[AccountOnboarding] (
    [OnboardingId]       INT             IDENTITY (1, 1) NOT NULL,
    [PersonId]           INT             NULL,
    [AccountTypeId]      INT             NULL,
    [AccountNumber]      VARCHAR (20)    NULL,
    [ApplicationDate]    DATETIME        DEFAULT (getdate()) NULL,
    [ApprovedBy]         INT             NULL,
    [ApprovalDate]       DATETIME        NULL,
    [Status]             VARCHAR (50)    NOT NULL,
    [RejectionReason]    TEXT            NULL,
    [DocumentsSubmitted] TEXT            NULL,
    [KycStatus]          VARCHAR (50)    NULL,
    [InitialDeposit]     DECIMAL (15, 2) NULL,
    [ReferralCode]       VARCHAR (50)    NULL,
    [Notes]              TEXT            NULL,
    PRIMARY KEY CLUSTERED ([OnboardingId] ASC),
    FOREIGN KEY ([AccountTypeId]) REFERENCES [dbo].[AccountType] ([AccountTypeId]),
    FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    UNIQUE NONCLUSTERED ([AccountNumber] ASC)
);


GO

