﻿CREATE TABLE [dbo].[Album] (
    [AlbumId]    INT            IDENTITY (1, 1) NOT NULL,
    [Title]      NVARCHAR (160) NOT NULL,
    [ArtistId]   INT            NOT NULL,
    [RowVersion] ROWVERSION     NOT NULL,
    CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED ([AlbumId] ASC),
    CONSTRAINT [FK_AlbumArtistId] FOREIGN KEY ([ArtistId]) REFERENCES [dbo].[Artist] ([ArtistId])
);


GO
CREATE NONCLUSTERED INDEX [IFK_AlbumArtistId]
    ON [dbo].[Album]([ArtistId] ASC);

