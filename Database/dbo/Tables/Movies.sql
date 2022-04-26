CREATE TABLE [dbo].[Movies] (
    [Identifier] INT            IDENTITY (1, 1) NOT NULL,
    [Title]      NVARCHAR (500) NOT NULL,
    [Year] INT NOT NULL,
    [Deleted]    BIT            DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Identifier] ASC)
);

