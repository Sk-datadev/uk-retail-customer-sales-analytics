-- Customer Lifetime Value (CLV)
-- Measures total revenue, orders, units purchased,
-- average order value, and customer lifespan.
--SELECT * FROM vw_CustomerLifetimeValue
CREATE VIEW vw_CustomerLifetimeValue AS

SELECT
    CustomerID,

    COUNT(DISTINCT InvoiceNo) AS No_Orders,

    SUM(Quantity) AS No_of_Units,

    CAST(
        SUM(Revenue) / NULLIF(COUNT(DISTINCT InvoiceNo), 0)
        AS DECIMAL(18,2)
    ) AS Avg_Order_Value,

    DATEDIFF(
        MONTH,
        MIN(InvoiceDate),
        MAX(InvoiceDate)
    ) AS LifeSpan_in_Months,

    CAST(
        SUM(Revenue)
        AS DECIMAL(18,2)
    ) AS Total_Revenue

FROM UKRETAIL

WHERE CustomerID IS NOT NULL

GROUP BY CustomerID;