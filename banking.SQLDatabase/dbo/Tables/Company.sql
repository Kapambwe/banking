CREATE TABLE [dbo].[Company] (
    [CompanyId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]      VARCHAR (255) NOT NULL,
    [Address]   VARCHAR (255) NULL,
    [Phone]     VARCHAR (20)  NULL,
    PRIMARY KEY CLUSTERED ([CompanyId] ASC)
);


GO

