CREATE PROCEDURE [dbo].[GetInvoiceChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT i.[InvoiceId]
		  ,il.[InvoiceLineId]
		  ,CONVERT(INT,
							(CONVERT(CHAR(4),DATEPART(YEAR,i.[InvoiceDate]))
						  + CASE 
								WHEN DATEPART(MONTH,i.[InvoiceDate]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,i.[InvoiceDate]))
								ELSE + CONVERT(CHAR(2),DATEPART(MONTH,i.[InvoiceDate]))
							END
						  + CASE 
								WHEN DATEPART(DAY,i.[InvoiceDate]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,i.[InvoiceDate]))
								ELSE + CONVERT(CHAR(2),DATEPART(DAY,i.[InvoiceDate]))
							END)) AS [DateKey]
		  ,i.[InvoiceDate]
		  ,i.[CustomerId]
		  ,il.[TrackId]
		  ,il.[Quantity]
		  ,il.[UnitPrice]
		  ,i.[Total]
	FROM [dbo].[Invoice] i
	INNER JOIN [dbo].[InvoiceLine] il ON i.InvoiceId = il.InvoiceId
	WHERE (i.[rowversion] > CONVERT(ROWVERSION,@startRow) 
			AND i.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (il.[rowversion] > CONVERT(ROWVERSION,@startRow) 
			AND il.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END