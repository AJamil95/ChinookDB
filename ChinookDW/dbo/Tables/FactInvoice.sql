CREATE TABLE [dbo].[FactInvoice] (
    [InvoiceId]     INT             NOT NULL,
    [DimCustomerSK] INT             NULL,
    [DimEmployeeSK] INT             NULL,
    [DimTrackSK]    INT             NULL,
    [DateKey]       INT             NULL,
    [FechaFactura]  DATE            NULL,
    [MontoTotal]    NUMERIC (10, 2) NULL,
    [InvoiceLineId] INT             NULL,
    [UnitPrice]     NUMERIC (10, 2) NULL,
    [Quantity]      INT             NULL,
    CONSTRAINT [PK_FactInvoice] PRIMARY KEY CLUSTERED ([InvoiceId] ASC),
    CONSTRAINT [FK_FactInvoice_DimCustomer] FOREIGN KEY ([DimCustomerSK]) REFERENCES [dbo].[DimCustomer] ([CustomerSK]),
    CONSTRAINT [FK_FactInvoice_DimDate] FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_FactInvoice_DimEmployee] FOREIGN KEY ([DimEmployeeSK]) REFERENCES [dbo].[DimEmployee] ([EmployeeSK]),
    CONSTRAINT [FK_FactInvoice_DimTrack] FOREIGN KEY ([DimTrackSK]) REFERENCES [dbo].[DimTrack] ([TrackSK])
);

