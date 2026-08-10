-- Product Performance
-- Measures units sold, invoices, average unit price,
-- customers served, and total revenue by product description.
--SELECT * FROM vw_ProductPerformance ORDER BY Total_Revenue DESC
CREATE VIEW vw_ProductPerformance AS

SELECT 
    Description AS Product,
    SUM(Quantity) AS Total_Units_Sold,
    COUNT(DISTINCT InvoiceNo) AS No_Invoices,
    CAST(AVG(UnitPrice) AS DECIMAL(18,2)) AS Avg_Unit_Price,
    COUNT(DISTINCT CustomerID) AS No_of_Customers,
    CAST(SUM(Revenue) AS DECIMAL(18,2)) AS Total_Revenue

FROM UKRETAIL

WHERE Description IS NOT NULL

GROUP BY Description;