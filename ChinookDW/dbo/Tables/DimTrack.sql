CREATE TABLE [dbo].[DimTrack] (
    [TrackSK]        INT             IDENTITY (1, 1) NOT NULL,
    [NombreTrack]    NVARCHAR (200)  NULL,
    [Album]          NVARCHAR (160)  NULL,
    [Artista]        NVARCHAR (120)  NULL,
    [Genero]         NVARCHAR (120)  NULL,
    [MediaType]      NVARCHAR (120)  NULL,
    [DuracionMs]     INT             NULL,
    [TamañoBytes]    INT             NULL,
    [PrecioUnitario] NUMERIC (10, 2) NULL,
    PRIMARY KEY CLUSTERED ([TrackSK] ASC)
);

