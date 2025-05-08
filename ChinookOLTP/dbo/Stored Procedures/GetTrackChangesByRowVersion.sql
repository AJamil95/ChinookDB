create procedure [dbo].[GetTrackChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN

	SELECT t.[TrackId]
		  ,t.[Name]
		  ,t.[Composer]
		  ,t.[Milliseconds]
		  ,t.[Bytes]
		  ,t.[UnitPrice]
		  ,ar.[Name] AS [ArtistName]
		  ,al.[Title] AS [AlbumTitle]
		  ,g.[Name] AS [GenreName]
		  ,m.[Name] AS [MediaTypeName]
	FROM [dbo].[Track] t
	INNER JOIN [dbo].[Album] al ON al.[AlbumId] = t.[AlbumId]
	INNER JOIN [dbo].[Artist] ar ON ar.ArtistId = al.ArtistId
	INNER JOIN [dbo].[Genre] g ON g.GenreId = t.GenreId
	INNER JOIN [dbo].[MediaType] m ON m.MediaTypeId = t.MediaTypeId
	WHERE (t.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND t.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (al.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND al.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (ar.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND ar.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (g.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND g.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (m.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND m.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END