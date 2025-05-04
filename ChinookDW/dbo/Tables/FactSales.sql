CREATE TABLE [dbo].[FactSales] (
    [InvoiceId]     INT             NOT NULL,
    [InvoiceLineId] INT             NOT NULL,
    [DateKey]       INT             NOT NULL,
    [InvoiceDate]   DATE            NOT NULL,
    [CustomerSK]    INT             NOT NULL,
    [AlbumSK]       INT             NULL,
    [TrackSK]       INT             NOT NULL,
    [GenreSK]       INT             NULL,
    [Quantity]      INT             NOT NULL,
    [UnitPrice]     NUMERIC (10, 2) NOT NULL,
    [Total]         NUMERIC (10, 2) NOT NULL,
    CONSTRAINT [PK_FactSales_InvoiceId_InvoiveLineId] PRIMARY KEY CLUSTERED ([InvoiceId], [InvoiceLineId]),
    CONSTRAINT [FK_FactSales_DimAlbum] FOREIGN KEY ([AlbumSK]) REFERENCES [dbo].[DimAlbum] ([AlbumSK]),
    CONSTRAINT [FK_FactSales_DimCustomer] FOREIGN KEY ([CustomerSK]) REFERENCES [dbo].[DimCustomer] ([CustomerSK]),
    CONSTRAINT [FK_FactSales_DimDate] FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_FactSales_DimGenre] FOREIGN KEY ([GenreSK]) REFERENCES [dbo].[DimGenre] ([GenreSK]),
    CONSTRAINT [FK_FactSales_DimTrack] FOREIGN KEY ([TrackSK]) REFERENCES [dbo].[DimTrack] ([TrackSK])
);

