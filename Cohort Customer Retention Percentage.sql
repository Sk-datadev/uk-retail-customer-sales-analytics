-- Cohort Customer Retention Percentage
-- Shows the percentage of each acquisition cohort
-- that made a purchase in each subsequent month.
-- Cohort Customer Retention Percentage
-- Shows the percentage of each acquisition cohort
-- that made a purchase in each subsequent month.

--SELECT * FROM vw_CohortCustomerRetentionPct
CREATE VIEW vw_CohortCustomerRetentionPct AS

WITH CohortData AS
(
    SELECT
        *,
        
        CASE
            WHEN CohortMonth = '2010-12' THEN [Dec_2010]
            WHEN CohortMonth = '2011-01' THEN [Jan_2011]
            WHEN CohortMonth = '2011-02' THEN [Feb_2011]
            WHEN CohortMonth = '2011-03' THEN [Mar_2011]
            WHEN CohortMonth = '2011-04' THEN [Apr_2011]
            WHEN CohortMonth = '2011-05' THEN [May_2011]
            WHEN CohortMonth = '2011-06' THEN [Jun_2011]
            WHEN CohortMonth = '2011-07' THEN [Jul_2011]
            WHEN CohortMonth = '2011-08' THEN [Aug_2011]
            WHEN CohortMonth = '2011-09' THEN [Sep_2011]
            WHEN CohortMonth = '2011-10' THEN [Oct_2011]
            WHEN CohortMonth = '2011-11' THEN [Nov_2011]
            WHEN CohortMonth = '2011-12' THEN [Dec_2011]
        END AS CohortSize

    FROM vw_CohortCustomerRetention
)

SELECT
    CohortMonth,

    CAST(ROUND(
        [Dec_2010] * 100.0 / NULLIF(CohortSize, 0), 2
    ) AS DECIMAL(10,2)) AS [Dec_2010],

    CAST(ROUND(
        [Jan_2011] * 100.0 / NULLIF(CohortSize, 0), 2
    ) AS DECIMAL(10,2)) AS [Jan_2011],

    CAST(ROUND(
        [Feb_2011] * 100.0 / NULLIF(CohortSize, 0), 2
    ) AS DECIMAL(10,2)) AS [Feb_2011],

    CAST(ROUND(
        [Mar_2011] * 100.0 / NULLIF(CohortSize, 0), 2
    ) AS DECIMAL(10,2)) AS [Mar_2011],

    CAST(ROUND(
        [Apr_2011] * 100.0 / NULLIF(CohortSize, 0), 2
    ) AS DECIMAL(10,2)) AS [Apr_2011],

    CAST(ROUND(
        [May_2011] * 100.0 / NULLIF(CohortSize, 0), 2
    ) AS DECIMAL(10,2)) AS [May_2011],

    CAST(ROUND(
        [Jun_2011] * 100.0 / NULLIF(CohortSize, 0), 2
    ) AS DECIMAL(10,2)) AS [Jun_2011],

    CAST(ROUND(
        [Jul_2011] * 100.0 / NULLIF(CohortSize, 0), 2
    ) AS DECIMAL(10,2)) AS [Jul_2011],

    CAST(ROUND(
        [Aug_2011] * 100.0 / NULLIF(CohortSize, 0), 2
    ) AS DECIMAL(10,2)) AS [Aug_2011],

    CAST(ROUND(
        [Sep_2011] * 100.0 / NULLIF(CohortSize, 0), 2
    ) AS DECIMAL(10,2)) AS [Sep_2011],

    CAST(ROUND(
        [Oct_2011] * 100.0 / NULLIF(CohortSize, 0), 2
    ) AS DECIMAL(10,2)) AS [Oct_2011],

    CAST(ROUND(
        [Nov_2011] * 100.0 / NULLIF(CohortSize, 0), 2
    ) AS DECIMAL(10,2)) AS [Nov_2011],

    CAST(ROUND(
        [Dec_2011] * 100.0 / NULLIF(CohortSize, 0), 2
    ) AS DECIMAL(10,2)) AS [Dec_2011]

FROM CohortData;
GO