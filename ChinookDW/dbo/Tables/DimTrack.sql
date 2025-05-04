CREATE TABLE [dbo].[DimTrack] (
    [TrackSK]        INT             IDENTITY (1, 1) NOT NULL,   
    [TrackId]      INT   NOT NULL,
    [Name]    NVARCHAR (200)  NULL,
    [AlbumName]          NVARCHAR (160)  NULL,
    [ArtistName]        NVARCHAR (120)  NULL,
    [Genere]         NVARCHAR (120)  NULL,
    [MediaType]      NVARCHAR (120)  NULL,
    [Milliseconds]     INT             NULL,
    [Bytes]    INT             NULL,
    [UnitPrice] NUMERIC (10, 2) NULL,
    PRIMARY KEY CLUSTERED ([TrackSK] ASC)
);

