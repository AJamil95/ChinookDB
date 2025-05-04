CREATE TABLE [dbo].[FactInvoice] (
    [InvoiceId]     INT             NOT NULL,
    [TrackId]       INT             NOT NULL,
    [CustomerSK] INT             NOT NULL,
    [TrackSK]    INT             NOT NULL,
    [InvoiceDateKey]  INT            NOT NULL,
    [InvoiceDate]  DATE            NOT NULL,
    [Total]    NUMERIC (10, 2) NULL,
    [UnitPrice]     NUMERIC (10, 2) NULL,
    [Quantity]      INT             NULL,
    CONSTRAINT [PK_FactInvoice] PRIMARY KEY CLUSTERED ([InvoiceId] ASC),
    CONSTRAINT [FK_FactInvoice_DimCustomer] FOREIGN KEY ([CustomerSK]) REFERENCES [dbo].[DimCustomer] ([CustomerSK]),
    CONSTRAINT [FK_FactInvoice_DimDate] FOREIGN KEY ([InvoiceDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_FactInvoice_DimTrack] FOREIGN KEY ([TrackSK]) REFERENCES [dbo].[DimTrack] ([TrackSK])
);

