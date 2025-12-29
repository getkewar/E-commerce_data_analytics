# 📦 E-Commerce Sales Analytics – SQL Server + Power BI Project

## 📌 Overview
This project is an end-to-end business analytics solution built using SQL Server (SSMS) and Power BI.  
It demonstrates the ability to transform raw sales data into meaningful business insights through KPI reporting, dashboards, and data modeling.

---

## 🗂 Dataset Details
The dataset contains 800+ e-commerce transaction records including:

| Column | Description |
|--------|-------------|
| order_id | Unique order reference |
| order_date | Transaction date |
| customer_id | Unique customer code |
| state / city | Location of purchase |
| product_category | Category of product |
| product_name | Item purchased |
| quantity | Units sold |
| unit_price | Price per unit |
| discount | Discount offered |
| payment_method | UPI / Card / COD |
| profit | Profit generated |

---

## 🧭 Architecture Workflow
CSV → SQL Server (SSMS) → Power BI ETL + Data Modeling → Dashboard → Insights


---

## 🧱 Project Steps
- Designed database schema in SQL Server
- Imported dataset into SQL Server table
- Executed SQL queries for business KPIs
- Connected Power BI to SQL database
- Cleaned and modeled data in Power Query
- Built multi-visual KPI dashboard
- Shared results and insights for decision support

---

## 📊 Dashboard – Key Metrics & Visuals
The Power BI report includes:

**KPI Cards**
- Total Revenue
- Total Profit
- Total Orders
- Unique Customers

**Visuals**
- Revenue Trend Line Chart
- Top Products Bar Chart
- Payment Method Donut Chart
- Sales by City Map Visualization
- Category Revenue Column Chart
- Date & Category Filters

### 🧾 Insights Summary (Separate Section)
```markdown
## 🧠 Insights Summary

- Electronics & Clothing generate the highest revenue
- UPI is the most preferred payment method
- Mumbai & Bengaluru are top-performing cities in sales
- Higher discount leads to a noticeable drop in profit margin

## 💼 Business Recommendations

- Increase inventory stock for top-performing categories
- Boost regional advertising where revenue is low
- Optimize discount strategy to protect margins


---

## 🧮 Sample SQL Queries

```sql
-- Total Revenue
SELECT SUM(quantity * unit_price * (1 - discount)) AS total_revenue
FROM ecommerce_sales;

-- Top Selling Products
SELECT TOP 10 product_name, SUM(quantity) AS total_quantity
FROM ecommerce_sales
GROUP BY product_name
ORDER BY total_quantity DESC;

-- Yearly Revenue Trend
SELECT YEAR(order_date) AS year,
       SUM(quantity * unit_price * (1 - discount)) AS revenue
FROM ecommerce_sales
GROUP BY YEAR(order_date)
ORDER BY year;


---

