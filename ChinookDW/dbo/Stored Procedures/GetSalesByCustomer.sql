CREATE PROCEDURE [dbo].[GetSalesByCustomer]
as
begin
SELECT fs.[CustomerSK]
	  ,CONCAT(dc.[FirstName],' ',dc.[LastName]) AS [FullName]
	  ,SUM([Quantity]*[UnitPrice]) AS [TotalNetSale]
	  
  FROM [dbo].[FactSales] fs
  INNER JOIN [dbo].[DimCustomer] dc ON dc.[CustomerSK] = fs.[CustomerSK]

  GROUP BY fs.[CustomerSK]
		   ,dc.[FirstName]
		   ,dc.[LastName]
ORDER BY [TotalNetSale] DESC
end