CREATE TABLE [dbo].[DimCustomer] (
    [CustomerSK] INT           IDENTITY (1, 1) NOT NULL,
    [CustomerId] INT           NOT NULL,
    [FirstName]  NVARCHAR (40) NULL,
    [LastName]   NVARCHAR (20) NULL,
    [Company]    NVARCHAR(80),
    [Address]    NVARCHAR(70),
    [City]       NVARCHAR(40),
    [State]      NVARCHAR(40),
    [Country]    NVARCHAR(40),
    [PostalCode] NVARCHAR(10),
    [Phone]      NVARCHAR(24),
    [Fax]        NVARCHAR(24),
    [Email] NVARCHAR(60) NOT NULL,
    [SupportRepId] INT
    PRIMARY KEY CLUSTERED ([CustomerSK] ASC)
);

