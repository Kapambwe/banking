CREATE TABLE [dbo].[LoanOnboarding] (
    [OnboardingId]       INT             IDENTITY (1, 1) NOT NULL,
    [PersonId]           INT             NULL,
    [LoanTypeId]         INT             NULL,
    [LoanNumber]         VARCHAR (20)    NULL,
    [PrincipalAmount]    DECIMAL (15, 2) NULL,
    [InterestRate]       DECIMAL (5, 2)  NULL,
    [StartDate]          DATE            NULL,
    [EndDate]            DATE            NULL,
    [ApplicationDate]    DATETIME        DEFAULT (getdate()) NULL,
    [ApprovedBy]         INT             NULL,
    [ApprovalDate]       DATETIME        NULL,
    [Status]             VARCHAR (50)    NOT NULL,
    [RejectionReason]    TEXT            NULL,
    [DocumentsSubmitted] TEXT            NULL,
    [CollateralDetails]  TEXT            NULL,
    [CreditScore]        INT             NULL,
    [LoanPurpose]        TEXT            NULL,
    [RepaymentSchedule]  TEXT            NULL,
    [KycStatus]          VARCHAR (50)    NULL,
    [Notes]              TEXT            NULL,
    PRIMARY KEY CLUSTERED ([OnboardingId] ASC),
    FOREIGN KEY ([LoanTypeId]) REFERENCES [dbo].[LoanType] ([LoanTypeId]),
    FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    UNIQUE NONCLUSTERED ([LoanNumber] ASC)
);


GO

