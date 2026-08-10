-- Country Performance
-- Measures sales, customers, orders, and customer value by country.

CREATE VIEW vw_CountryPerformance AS

SELECT
    Country,

    SUM(Quantity) AS Total_Units_Sold,

    COUNT(DISTINCT InvoiceNo) AS No_Orders,

    COUNT(DISTINCT CustomerID) AS No_of_Customers,

    CAST(
        SUM(Revenue)
        AS DECIMAL(18,2)
    ) AS Total_Revenue,

    CAST(
        SUM(Revenue) /
        NULLIF(COUNT(DISTINCT InvoiceNo), 0)
        AS DECIMAL(18,2)
    ) AS Avg_Order_Value,

    CAST(
        SUM(Revenue) /
        NULLIF(COUNT(DISTINCT CustomerID), 0)
        AS DECIMAL(18,2)
    ) AS Revenue_Per_Customer

FROM UKRETAIL

WHERE Country IS NOT NULL

GROUP BY Country

HAVING SUM(Revenue) <> 0;