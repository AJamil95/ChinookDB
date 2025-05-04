CREATE TABLE [dbo].[DimTrack] (
    [TrackSK]      INT             IDENTITY (1, 1) NOT NULL,
    [TrackId]      INT             NOT NULL,
    [Name]         NVARCHAR (200)  NULL,
    [AlbumId]      INT             NULL,
    [MediaTypeId]  INT             NULL,
    [GenreId]      INT             NULL,
    [Composer]     NVARCHAR (220)  NULL,
    [Milliseconds] INT             NULL,
    [Bytes]        INT             NULL,
    [UnitPrice]    NUMERIC (10, 2) NULL,
    PRIMARY KEY CLUSTERED ([TrackSK] ASC)
);

