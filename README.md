# uk-retail-customer-sales-analytics
SQL and Power BI analysis of UK retail sales, customer cohorts, retention, product performance, and sales trends.

## Project Overview

This project analyzes an online retail dataset to understand sales performance, customer behavior, retention, and revenue generation. SQL is used for data analysis and advanced business calculations, while Power BI is used to develop interactive dashboards and communicate key insights.

The analysis focuses on customer cohorts, recurring revenue, customer retention, customer lifetime value, purchase frequency, product performance, country performance, and monthly sales trends.

## Objectives

* Analyze customer cohorts and measure recurring revenue over time.
* Measure customer retention and identify where customer drop-off occurs.
* Calculate customer lifetime value and purchase behavior.
* Segment customers based on purchase frequency.
* Identify top-performing products and their contribution to revenue.
* Evaluate sales performance across countries.
* Analyze monthly sales trends and month-over-month revenue growth.
* Develop interactive Power BI dashboards to communicate findings and support business decision-making.

  ## Dataset

The project uses the **Online Retail** transactional dataset, containing **541,909 transaction records** from a UK-based online retailer.

Each record represents a product line within an invoice and includes information such as:

* Invoice number
* Stock code
* Product description
* Quantity purchased
* Invoice date
* Unit price
* Customer ID
* Country

A revenue measure was derived from **Quantity × Unit Price** and used throughout the analysis.

The dataset contains both sales and cancelled/returned transactions, including invoices associated with cancellations and transactions with negative quantities or revenue. These records were retained where relevant to support the analysis of sales performance and returns.

## Tools & Technologies

* **SQL Server** — Data cleaning, transformation, analysis, aggregations, CTEs, window functions, and creation of analytical views.
* **Power BI** — Interactive dashboards, data visualization, KPI reporting, and business insights.
* **Microsoft Excel** — Initial data inspection and validation.
* **GitHub** — Version control and project documentation.

## SQL Analysis

| Script Name | Analysis                                 | Focus / Action                                                                                                        |
| ----------- | ---------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `country_Performance.sql` | **Country Performance**                  | Compare revenue, orders, customers, units sold, average order value, and revenue per customer across countries.       |
| `product performance.sql` | **Product Performance**               | Identify top-performing products based on revenue, units sold, orders, and customers.                                 |
| `Cohort Customer Retention Matrix.sql` | **Cohort Customer Retention Matrix**     | Track the number of customers from each acquisition cohort who purchase again in subsequent months.                   |
| `Cohort Customer Retention Percentage.sql` | **Cohort Customer Retention Percentage** | Calculate cohort retention rates and identify customer drop-off over time.                                            |
| `Cohort Revenue Matrix.sql` | **Cohort Revenue Matrix**                | Measure revenue contributed by each customer cohort across subsequent months.                                         |
| `Customer_LifetimeValue.sql` | **Customer Lifetime Value (CLV)**        | Measure historical customer value using revenue, orders, average order value, units purchased, and customer lifespan. |
| `Monthly sales performance.sql` | **Monthly Sales Performance**            | Analyze monthly sales trends and calculate month-over-month revenue growth using `LAG()`.                             |
| `Customer Purchase Freq.sql` | **Customer Purchase Frequency**          | Segment customers by number of orders and compare customer counts and revenue contribution.                           |

