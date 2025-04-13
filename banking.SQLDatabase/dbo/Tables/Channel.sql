CREATE TABLE [dbo].[Channel] (
    [ChannelId]   INT            IDENTITY (1, 1) NOT NULL,
    [ChannelName] VARCHAR (50)   NOT NULL,
    [Latitude]    DECIMAL (9, 6) NULL,
    [Longitude]   DECIMAL (9, 6) NULL,
    PRIMARY KEY CLUSTERED ([ChannelId] ASC)
);


GO

