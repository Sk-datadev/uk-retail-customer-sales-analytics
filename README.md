# UK-retail-customer-sales-analytics
SQL and Power BI analysis of UK retail sales, customer cohorts, retention, product performance, and sales trends.

## Table of contents
  [Project Overview](#project-overview)<br>
[Objectives](#objectives)<br>
[Dataset](#dataset)<br>
[Tools & Technologies](#tools--technologies)<br>
[SQL Analysis](#sql-analysis)<br>
[Dashboards](#dashboards)<br>
[Key Findings](#key-findings)<br>
[Recommendations](#recommendations)<br>
[Overall Business Conclusion](#overall-business-conclusion)
  
  
  
  

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

# Dashboards

### Page 1 — Executive Overview
Provides a high-level view of sales performance, revenue trends, products, and market contribution.
<img width="585" height="326" alt="Dashboard Pg 1" src="https://github.com/user-attachments/assets/4051dcd2-bde3-43bb-a919-a460f019ea53" />


### Page 2 — Customer Analysis
Examines customer behavior, retention, purchase frequency, and revenue contribution across cohorts.
<img width="581" height="323" alt="dashboard pg 2" src="https://github.com/user-attachments/assets/0eb7e1e3-018a-47f2-8a30-5d78eff6fd82" />

### Page 3 — Customer & Revenue Concentration

Highlights revenue concentration among high-value customers and identifies key drivers of business revenue.

<img width="587" height="326" alt="dashboardpg3" src="https://github.com/user-attachments/assets/31000a7a-f871-4774-8552-a8c178e9a9a9" />


# Key Findings

### 1. Sales Peak Toward the End of the Year

- Revenue increased strongly from September onward.
- **November was the strongest month at £1.47M**, followed by December at **£1.19M**.
- September and October also exceeded **£1M**.

**Business Answer:** Sales are highly seasonal, with a strong Q4 concentration.

---

### 2. The UK Is the Dominant Market

- The **UK generated approximately £8.30M**, far ahead of the Netherlands (£284.74K), EIRE (£270.54K), Germany (£222.66K), and France (£198.21K).
- The UK also accounts for the majority of customers.

**Business Answer:** Revenue is heavily dependent on the UK market.

---

### 3. Repeat Customers Drive Revenue

- **7+ orders:** £5.8M
- **4–6 orders:** £1.3M
- **2–3 orders:** £0.9M
- **One-time customers:** £0.4M

**Business Answer:** Repeat customers contribute substantially more revenue than one-time customers, making retention a key growth driver.

---

### 4. December 2010 Is the Strongest Cohort

The December 2010 cohort maintained significant purchasing activity throughout 2011, with retention reaching **50% in November** and **27.43% by December 2011**.

**Business Answer:** The December 2010 cohort demonstrates strong long-term engagement and recurring revenue.

---

### 5. Customer Retention Declines Over Time

The January 2011 cohort declined from **100% at acquisition to 14.96% by December 2011**.

**Business Answer:** Although some customers remain active, significant customer drop-off occurs over time.

---

### 6. Revenue Is Concentrated Among High-Value Customers

Top customers generated substantial revenue, including:

- Customer 14646 — **£279.5K**
- Customer 18102 — **£256.3K**
- Customer 17450 — **£187.9K**
- Customer 14911 — **£135.3K**

**Business Answer:** A small group of high-value customers contributes disproportionately to revenue.

---

### 7. Product Revenue Is Concentrated

Top products include:

- **DOTCOM POSTAGE — £206K**
- **REGENCY CAKES — £165K**
- **WHITE HANGING HEART — £101K**
- **PARTY BUNTING — £99K**
- **JUMBO BAG RED — £94K**

**Business Answer:** A relatively small number of products contribute significantly to sales.

---

### 8. Missing Customer IDs Limit Customer Analysis

Total revenue is approximately **£9.88M**, while the customer-level analysis totals approximately **£8.42M**.

**Business Implication:** Customer-level analyses only capture revenue that can be linked to identified customers.

---

# Recommendations

### 1. Prioritize High-Value Repeat Customers

- Introduce loyalty programmes.
- Provide personalized offers.
- Monitor declining purchase frequency.
- Develop targeted re-engagement campaigns.

---

### 2. Convert One-Time Customers

- Create first-to-second purchase campaigns.
- Use personalized recommendations and incentives.
- Encourage complementary purchases.

---

### 3. Protect High-Value Customers

Identify the top **10–20%** of customers and provide targeted retention strategies rather than broad discounts.

---

### 4. Leverage Cohort Insights

Investigate what made the December 2010 cohort successful and apply those acquisition and retention strategies to newer cohorts.

---

### 5. Prepare for Q4

- Increase inventory before November–December.
- Start campaigns ahead of the peak.
- Use historical demand for forecasting.

---

### 6. Expand Strong International Markets

The Netherlands, EIRE, Germany, France and Australia are the strongest international markets.

Focus on localized campaigns, promotions and shipping strategies.

---

### 7. Prioritize High-Performing Products

Maintain stock availability and use top products in seasonal campaigns and cross-selling strategies.

> **Note:** DOTCOM POSTAGE should be treated separately from physical products because it represents a service/charge.

---

### 8. Improve Customer Data Capture

Improve CustomerID collection during order processing to strengthen CLV, retention and customer segmentation analysis.

---

# Overall Business Conclusion

> **Revenue is strongly driven by repeat customers, high-value customers and a relatively small number of products. Sales are heavily concentrated in the UK and peak during Q4, particularly November and December. The main opportunities are improving customer retention, protecting high-value customers, optimizing seasonal inventory, expanding international markets and improving customer data capture.**
