CREATE TABLE [dbo].[DimGenre] (
    [GenreSK] INT            IDENTITY (1, 1) NOT NULL,
    [GenreId] INT            NOT NULL,
    [Name]    NVARCHAR (120) NULL,
    PRIMARY KEY CLUSTERED ([GenreSK] ASC)
);

