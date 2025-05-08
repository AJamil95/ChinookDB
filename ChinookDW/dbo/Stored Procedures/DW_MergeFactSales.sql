CREATE PROCEDURE[dbo].[DW_MergeFactSales]
AS
BEGIN
	UPDATE fs
	SET [DateKey] = s.[DateKey] 
		  ,[InvoiceDate] = s.[InvoiceDate] 
		  ,[CustomerSK] = s.[CustomerSK]
		  ,[TrackSK] = s.[TrackSK]
		  ,[Quantity] = s.[Quantity]
		  ,[UnitPrice] = s.[UnitPrice]
		  ,[Total] = s.[Total]
	FROM [dbo].[FactSales]        fs
	INNER JOIN [staging].[Sales] s ON (s.[InvoiceId] = fs.[InvoiceId] AND s.[InvoiceLineId] = fs.[InvoiceLineId])
END