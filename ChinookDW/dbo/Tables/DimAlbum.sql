CREATE TABLE [dbo].[DimAlbum] (
    [AlbumSK]    INT            IDENTITY (1, 1) NOT NULL,
    [AlbumId]    INT            NOT NULL,
    [Title]      NVARCHAR (160) NULL,
    [ArtistId]   INT            NULL,
    [ArtistName] NVARCHAR (120) NULL,
    PRIMARY KEY CLUSTERED ([AlbumSK] ASC)
);

