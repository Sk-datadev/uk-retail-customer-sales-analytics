-- Customer Purchase Frequency
-- Classifies customers based on the number of distinct orders
-- and measures the revenue contributed by each customer group.
SELECT * FROM vw_CustomerPurchaseFrequency
CREATE VIEW vw_CustomerPurchaseFrequency AS

WITH CustomerOrders AS
(
    SELECT
        CustomerID,
        COUNT(DISTINCT InvoiceNo) AS No_Orders,
        SUM(Revenue) AS Total_Revenue

    FROM UKRETAIL

    WHERE CustomerID IS NOT NULL

    GROUP BY CustomerID
)

SELECT
    CASE
        WHEN No_Orders = 1 THEN 'One-Time Customer'
        WHEN No_Orders BETWEEN 2 AND 3 THEN '2-3 Orders'
        WHEN No_Orders BETWEEN 4 AND 6 THEN '4-6 Orders'
        ELSE '7+ Orders'
    END AS Customer_Segment,

    COUNT(*) AS No_Customers,

    CAST(
        SUM(Total_Revenue)
        AS DECIMAL(18,2)
    ) AS Total_Revenue,

    CAST(
        AVG(Total_Revenue)
        AS DECIMAL(18,2)
    ) AS Avg_Customer_Revenue

FROM CustomerOrders

GROUP BY
    CASE
        WHEN No_Orders = 1 THEN 'One-Time Customer'
        WHEN No_Orders BETWEEN 2 AND 3 THEN '2-3 Orders'
        WHEN No_Orders BETWEEN 4 AND 6 THEN '4-6 Orders'
        ELSE '7+ Orders'
    END;