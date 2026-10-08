# 🍕 Pizza Sales Analysis Dashboard
  
  [![📊 Excel Analysis](https://img.shields.io/badge/📊%20Excel%20Analysis-View%20Workbook-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)](./pizza_sales_analysis.xlsx)
[![🗄️ SQL Queries](https://img.shields.io/badge/🗄️%20SQL%20Queries-View%20Queries-4479A1?style=for-the-badge&logo=sql&logoColor=white)](./pizza_sales_kpi_queries.sql)

[![📈 Analytics](https://img.shields.io/badge/📈%20Analytics-Insights-EDE7F6?style=for-the-badge&labelColor=D1C4E9)](#-analytics)
[![💼 Business Intelligence](https://img.shields.io/badge/💼%20Business%20Intelligence-KPIs-FFF3E0?style=for-the-badge&labelColor=FFE0B2)](#-business-intelligence)
[![📊 Dashboard](https://img.shields.io/badge/📊%20Dashboard-View-BBDEFB?style=for-the-badge&labelColor=90CAF9)](#-dashboard)
  
## 📌 Project Overview

This project analyzes pizza sales data using **SQL** and **Microsoft Excel** to uncover key business insights related to revenue, customer purchasing behavior, product performance, and sales trends.

The dashboard converts raw transactional data into actionable insights that support better business decisions in sales strategy, staffing, inventory planning, and menu optimization. Dataset and SQL queries are sourced from pizza_sales_Analysis .xlsx and SQL_Querries for KPI's .sql. 

---

## 📑 Table of Contents

The goal of this project is to answer the following business questions:

- What is the total revenue generated?
- Which pizza categories contribute the most revenue?
- Which pizza sizes are most popular?
- When do customers place the most orders?
- What are the best-selling and worst-selling pizzas?
- How can operational efficiency and sales performance be improved?

---

## 🛠 Tools & Technologies

| Tool | Purpose |
|--------|---------|
| SQL Server | Data querying & KPI calculation |
| Microsoft Excel | Dashboard development |
| Pivot Tables | Trend analysis |
| Charts & Visualizations | Performance reporting |

---

## 📊 Dataset Overview

The dataset contains transactional pizza order records including: pizza_sales_Analysis .xlsx. 

- Order ID
- Order Date & Time
- Pizza Name
- Pizza Category
- Pizza Size
- Quantity Sold
- Unit Price
- Total Price
- Ingredients

Each record represents a pizza item purchased within an order. 

---

## 📈 KPIs Tracked

| KPI | Value |
|------|-------|
| Total Revenue | $69,793.30 |
| Total Orders | 1,845 |
| Total Pizzas Sold | 4,232 |
| Average Order Value | $37.83 |
| Average Pizzas per Order | 2.29 |

---

## 🚀 Key Results

### 📅 Sales Trends

✅ Highest order volume occurred on **Friday**.  
✅ Lowest order volume occurred on **Sunday**.  
✅ Peak ordering time was between **12 PM and 1 PM**. 

### 🍕 Product Performance

✅ **Classic Pizza Category** generated the highest revenue contribution.  
✅ **Large Pizza Size** contributed the largest share of revenue. 

### 📊 Customer Behavior Insights

✅ Customers preferred larger pizza sizes.  
✅ Weekend sales outperformed weekdays.  
✅ Lunch hours generated the highest order activity. 

---

## 📸 Dashboard Screenshot

### Executive Dashboard

<img width="1273" height="725" alt="Pizza Sales Analysis Dashboard" src="https://github.com/user-attachments/assets/8b8cacd3-5f60-4bb0-810e-acd401880592" />

---
## 🗄 SQL Analysis
The SQL queries were used to calculate and analyze: SQL_Querries for KPI's .sql. 

### KPI Queries

- Total Revenue
- Average Order Value
- Total Pizzas Sold
- Total Orders
- Average Pizzas per Order

### Trend Analysis

- Daily Order Trends
- Hourly Order Trends

### Sales Performance

- Revenue by Pizza Category
- Revenue by Pizza Size

### Product Analysis

- Top 5 Best-Selling Pizzas
- Top 5 Worst-Selling Pizzas

---

**🧮 Sample SQL Analysis**

**Total Revenue:**

SELECT SUM(total_price) AS Total_Revenue
FROM pizza_sales;

**Total Orders:**

SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales;

**Average Pizza per Order:**

SELECT
    CAST(
        CAST(SUM(quantity) AS DECIMAL(10,2)) /
        CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2))
        AS DECIMAL(10,2)
    ) AS Avg_Pizzas_per_Order
FROM pizza_sales;

**Top 5 Best-Selling Pizzas:**

SELECT TOP 5
    pizza_name,
    SUM(quantity) AS Total_Quantity_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity_Sold DESC;

---

## 💡 Business Recommendations

- Increase staffing levels during Friday and weekend rush periods.
- Promote high-demand pizza categories through targeted campaigns.
- Focus on Large-sized pizzas for bundled offers and upselling.
- Re-evaluate low-performing menu items to improve profitability.
- Use peak-hour trends for better inventory and workforce planning.

---
## **🏆 Skills Demonstrated**

- SQL Querying
- Data Analysis
- KPI Development
- Sales Analytics
- Business Intelligence
- Dashboard Design
- Excel Reporting
- Data Visualization
- Insight Generation

---
## 🙏 Acknowledgements

I would like to express my sincere gratitude to **Data Tutorials** for their educational content and practical guidance on data analytics projects.

Their tutorials provided valuable insights into:

- SQL Query Development
- KPI Analysis
- Business Intelligence Reporting
- Excel Dashboard Design
- Data Storytelling

This project was completed as part of my learning journey, applying and expanding upon the concepts taught through their resources.

Thank you to Data Tutorials for supporting the data analytics community and helping learners build real-world analytical skills.

---

### **⭐ Project Outcome**

Successfully transformed raw pizza sales transaction data into an interactive dashboard that highlights business performance, customer trends, product insights, and revenue opportunities for data-driven decision-making. pizza_sales_Analysis .xlsx

---

## **👩‍💻 Author**

### Aishwarya Jayant Dixit

Aspiring Data Analyst passionate about transforming raw data into meaningful business insights through analytics and visualization.

---

### 🔗 Connect With Me

**LinkedIn:**  
www.linkedin.com/in/aishwarya-jayant-dixit-399b56211

**GitHub:**  
https://github.com/Aishwarya-JD/Aishwarya-JD.git

---

⭐ Support If you found this project helpful, please consider:

⭐ Starring the repository

🍴 Forking the project

💬 Sharing your feedback
