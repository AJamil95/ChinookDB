CREATE PROCEDURE [dbo].[GetSalesByGenre]
as
begin
SELECT dt.[GenreName]
	  ,SUM([Quantity]*fs.[UnitPrice]) AS [TotalNetSale]
	  
  FROM [dbo].[FactSales] fs
  INNER JOIN [dbo].[DimTrack] dt ON dt.[TrackSK] = fs.[TrackSK]

  GROUP BY dt.[GenreName]
ORDER BY [TotalNetSale] DESC
end