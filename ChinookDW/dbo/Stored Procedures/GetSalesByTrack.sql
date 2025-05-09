CREATE PROCEDURE [dbo].[GetSalesByTrack]
(
	@year INT,
	@month int
)
as
begin
SELECT dt.[TrackSK]
	  ,dt.[Name]
	  ,SUM([Quantity]*fs.[UnitPrice]) AS [TotalNetSale]
	  ,FORMAT(fs.[InvoiceDate],'dd/MM/yyyy') AS [InvoiceDate]
	  
  FROM [dbo].[FactSales] fs
  INNER JOIN [dbo].[DimTrack] dt ON dt.[TrackSK] = fs.[TrackSK]
  WHERE YEAR(fs.[InvoiceDate]) = @year AND MONTH(fs.[InvoiceDate]) = @month
  GROUP BY dt.[TrackSK]
	  ,dt.[Name]
	  ,fs.[InvoiceDate]
ORDER BY [TotalNetSale] DESC
end