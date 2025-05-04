CREATE TABLE [dbo].[DimCustomer] (
    [CustomerSK]   INT           IDENTITY (1, 1) NOT NULL CONSTRAINT PK_DimCustomer PRIMARY KEY,
    [CustomerID] [int] NOT NULL,
    [FirstName]       NVARCHAR (40) NULL,
    [LastName]     NVARCHAR (20) NULL,
    [Email]        NVARCHAR (60) NULL,
    [Company]      NVARCHAR (80) NULL,
    [City]       NVARCHAR (40) NULL,
    [State]       NVARCHAR (40) NULL,
    [Country]         NVARCHAR (40) NULL,
    [PostalCode] NVARCHAR (10) NULL,
    [Phone]     NVARCHAR (24) NULL
);

