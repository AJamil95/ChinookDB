CREATE TABLE [dbo].[DimTrack] (
    [TrackSK]      INT             IDENTITY (1, 1) NOT NULL,
    [TrackId]      INT             NOT NULL,
    [Name]         NVARCHAR (200)  NULL,
    [Composer]     NVARCHAR (220)  NULL,
    [Milliseconds] INT             NULL,
    [Bytes]        INT             NULL,
    [UnitPrice]    NUMERIC (10, 2) NULL,
    [ArtistName] NCHAR(120) NULL, 
    [AlbumTitle] NCHAR(160) NULL, 
    [GenreName] NCHAR(120) NULL, 
    [MediaTypeName] NCHAR(120) NULL, 
    PRIMARY KEY CLUSTERED ([TrackSK] ASC)
);

