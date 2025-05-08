CREATE PROCEDURE[dbo].[DW_MergeDimCustomer]
AS
BEGIN
	UPDATE dc
	SET [FirstName] = c.[FirstName]
	,[LastName] = c.[LastName]
	,[Company] = c.[Company]
	,[Address] = c.[Address]
	,[City] = c.[City]
	,[State] = c.[State]
	,[Country] = c.[Country]
	,[PostalCode] = c.[PostalCode]
	,[Phone] = c.[Phone]
	,[Fax] = c.[Fax]
	,[Email] = c.[Email]
	,[SupportRepName] = c.[SupportRepName]
	FROM [dbo].[DimCustomer]        dc
	INNER JOIN [staging].[Customer] c ON dc.[CustomerSK] = c.[CustomerSK]
END