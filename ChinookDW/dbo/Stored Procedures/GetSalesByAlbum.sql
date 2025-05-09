CREATE PROCEDURE [dbo].[GetSalesByAlbum]
as
begin
SELECT dt.[AlbumTitle]
	  ,SUM([Quantity]*fs.[UnitPrice]) AS [TotalNetSale]
	  
  FROM [dbo].[FactSales] fs
  INNER JOIN [dbo].[DimTrack] dt ON dt.[TrackSK] = fs.[TrackSK]

  GROUP BY dt.[AlbumTitle]
ORDER BY [TotalNetSale] DESC
end