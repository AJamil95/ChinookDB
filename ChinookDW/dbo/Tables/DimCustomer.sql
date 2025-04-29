CREATE TABLE [dbo].[DimCustomer] (
    [CustomerSK]   INT           IDENTITY (1, 1) NOT NULL,
    [Nombre]       NVARCHAR (40) NULL,
    [Apellido]     NVARCHAR (20) NULL,
    [Email]        NVARCHAR (60) NULL,
    [Empresa]      NVARCHAR (80) NULL,
    [Ciudad]       NVARCHAR (40) NULL,
    [Estado]       NVARCHAR (40) NULL,
    [Pais]         NVARCHAR (40) NULL,
    [CodigoPostal] NVARCHAR (10) NULL,
    [Telefono]     NVARCHAR (24) NULL,
    PRIMARY KEY CLUSTERED ([CustomerSK] ASC)
);

