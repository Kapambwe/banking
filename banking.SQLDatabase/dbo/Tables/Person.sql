CREATE TABLE [dbo].[Person] (
    [PersonId]  INT           IDENTITY (1, 1) NOT NULL,
    [FirstName] VARCHAR (255) NOT NULL,
    [LastName]  VARCHAR (255) NOT NULL,
    [Email]     VARCHAR (255) NULL,
    [Phone]     VARCHAR (20)  NULL,
    [CompanyId] INT           NULL,
    PRIMARY KEY CLUSTERED ([PersonId] ASC),
    FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[Company] ([CompanyId]),
    UNIQUE NONCLUSTERED ([Email] ASC)
);


GO

