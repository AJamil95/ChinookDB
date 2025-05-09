CREATE PROCEDURE [dbo].[GetYears]
as
begin
 SET NOCOUNT ON;
 SELECT DISTINCT YEAR(fs.[InvoiceDate]) AS [Year]
 FROM [dbo].[FactSales] fs
 ORDER BY YEAR(fs.InvoiceDate)
end