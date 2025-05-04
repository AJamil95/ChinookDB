CREATE TABLE [staging].[Track] (
    [TrackSK]      INT             NULL,
    [Name]         NVARCHAR (200)  NULL,
    [AlbumId]      INT             NULL,
    [MediaTypeId]  INT             NULL,
    [GenreId]      INT             NULL,
    [Composer]     NVARCHAR (220)  NULL,
    [Milliseconds] INT             NULL,
    [Bytes]        INT             NULL,
    [UnitPrice]    NUMERIC (10, 2) NULL
);

