CREATE TABLE [staging].[Sales] (
    [InvoiceId]     INT             NOT NULL,
    [InvoiceLineId] INT             NOT NULL,
    [InvoiceDate]   DATE            NOT NULL,
    [CustomerSK]    INT             NOT NULL,
    [AlbumSK]       INT             NULL,
    [TrackSK]       INT             NOT NULL,
    [GenreSK]       INT             NULL,
    [Quantity]      INT             NOT NULL,
    [UnitPrice]     NUMERIC (10, 2) NOT NULL,
    [Total]         NUMERIC (10, 2) NOT NULL
);

