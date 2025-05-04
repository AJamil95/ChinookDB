CREATE TABLE [staging].[Customer] (
    [CustomerSK]   INT           NULL,
    [FirstName]    NVARCHAR (40) NOT NULL,
    [LastName]     NVARCHAR (20) NOT NULL,
    [Company]      NVARCHAR (80) NULL,
    [Address]      NVARCHAR (70) NULL,
    [City]         NVARCHAR (40) NULL,
    [State]        NVARCHAR (40) NULL,
    [Country]      NVARCHAR (40) NULL,
    [PostalCode]   NVARCHAR (10) NULL,
    [Phone]        NVARCHAR (24) NULL,
    [Fax]          NVARCHAR (24) NULL,
    [Email]        NVARCHAR (60) NOT NULL,
    [SupportRepId] INT           NULL
);

