CREATE PROCEDURE [dbo].[GetCustomerChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT c.[CustomerId]
	,c.[FirstName]
	,c.[LastName]
	,c.[Company]
	,c.[Address]
	,c.[City]
	,c.[State]
	,c.[Country]
	,c.[PostalCode]
	,c.[Phone]
	,c.[Fax]
	,c.[Email]
	,CONCAT(e.[FirstName] ,' ',e.[LastName]) AS [SupportRepName]
FROM [dbo].[Customer] c 
INNER JOIN [dbo].[Employee] e on e.EmployeeId = c.SupportRepId
WHERE c.[rowversion] > CONVERT(ROWVERSION,@startRow) 
AND c.[rowversion] <= CONVERT(ROWVERSION,@endRow)
END