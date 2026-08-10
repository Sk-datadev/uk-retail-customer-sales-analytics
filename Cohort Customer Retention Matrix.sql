-- Cohort Customer Retention Matrix:
-- Tracks customers from their acquisition cohort into
-- subsequent purchase months.
--SELECT * FROM vw_CohortCustomerRetention
--DROP VIEW vw_CohortCustomerRetention
CREATE VIEW vw_CohortCustomerRetention AS

SELECT
    CohortMonth,

    COUNT(DISTINCT CASE
        WHEN InvoiceDate >= '2010-12-01'
         AND InvoiceDate < '2011-01-01'
        THEN CustomerID
    END) AS [Dec_2010],

    COUNT(DISTINCT CASE
        WHEN InvoiceDate >= '2011-01-01'
         AND InvoiceDate < '2011-02-01'
        THEN CustomerID
    END) AS [Jan_2011],

    COUNT(DISTINCT CASE
        WHEN InvoiceDate >= '2011-02-01'
         AND InvoiceDate < '2011-03-01'
        THEN CustomerID
    END) AS [Feb_2011],

    COUNT(DISTINCT CASE
        WHEN InvoiceDate >= '2011-03-01'
         AND InvoiceDate < '2011-04-01'
        THEN CustomerID
    END) AS [Mar_2011],

    COUNT(DISTINCT CASE
        WHEN InvoiceDate >= '2011-04-01'
         AND InvoiceDate < '2011-05-01'
        THEN CustomerID
    END) AS [Apr_2011],

    COUNT(DISTINCT CASE
        WHEN InvoiceDate >= '2011-05-01'
         AND InvoiceDate < '2011-06-01'
        THEN CustomerID
    END) AS [May_2011],

    COUNT(DISTINCT CASE
        WHEN InvoiceDate >= '2011-06-01'
         AND InvoiceDate < '2011-07-01'
        THEN CustomerID
    END) AS [Jun_2011],

    COUNT(DISTINCT CASE
        WHEN InvoiceDate >= '2011-07-01'
         AND InvoiceDate < '2011-08-01'
        THEN CustomerID
    END) AS [Jul_2011],

    COUNT(DISTINCT CASE
        WHEN InvoiceDate >= '2011-08-01'
         AND InvoiceDate < '2011-09-01'
        THEN CustomerID
    END) AS [Aug_2011],

    COUNT(DISTINCT CASE
        WHEN InvoiceDate >= '2011-09-01'
         AND InvoiceDate < '2011-10-01'
        THEN CustomerID
    END) AS [Sep_2011],

    COUNT(DISTINCT CASE
        WHEN InvoiceDate >= '2011-10-01'
         AND InvoiceDate < '2011-11-01'
        THEN CustomerID
    END) AS [Oct_2011],

    COUNT(DISTINCT CASE
        WHEN InvoiceDate >= '2011-11-01'
         AND InvoiceDate < '2011-12-01'
        THEN CustomerID
    END) AS [Nov_2011],

    COUNT(DISTINCT CASE
        WHEN InvoiceDate >= '2011-12-01'
         AND InvoiceDate < '2012-01-01'
        THEN CustomerID
    END) AS [Dec_2011]

FROM UKRETAIL

WHERE CustomerID IS NOT NULL
  AND CohortMonth IS NOT NULL

GROUP BY CohortMonth;