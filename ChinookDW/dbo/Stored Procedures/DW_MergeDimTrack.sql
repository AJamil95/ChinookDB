CREATE PROCEDURE[dbo].[DW_MergeDimTrack]
AS
BEGIN
	UPDATE dt
	SET [Name] = t.[Name]
		  ,[Composer] = t.[Composer] 
		  ,[Milliseconds] = t.[Milliseconds]
		  ,[Bytes] = t.[Bytes]
		  ,[UnitPrice] = t.[UnitPrice]
		  ,[ArtistName] = t.[ArtistName]
		  ,[AlbumTitle] = t.[AlbumTitle]
		  ,[GenreName] = t.[GenreName]
		  ,[MediaTypeName] = t.[MediaTypeName]
	FROM [dbo].[DimTrack]        dt
	INNER JOIN [staging].[Track] t ON dt.[TrackSK] = t.[TrackSK]
END