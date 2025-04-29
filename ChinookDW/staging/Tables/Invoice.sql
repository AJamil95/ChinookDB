CREATE TABLE [staging].[Invoice] (
    [InvoiceId]     INT             NULL,
    [Date]          DATE            NULL,
    [FechaFactura]  DATE            NULL,
    [MontoTotal]    NUMERIC (10, 2) NULL,
    [InvoiceLineId] INT             NULL,
    [TrackId]       INT             NULL,
    [UnitPrice]     NUMERIC (10, 2) NULL,
    [Quantity]      INT             NULL
);

