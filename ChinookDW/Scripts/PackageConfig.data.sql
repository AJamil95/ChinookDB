IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Customer')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Customer', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Track')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Track', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Album')
 BEGIN
  INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Album', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Genre')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Genre', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Sales')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Sales', 0)
 END
GO
