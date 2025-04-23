# retail-sales-sql-project
“Retail sales analysis using SQL. Includes data exploration, CTEs, window functions, and business insights.”
# 🛍️ Retail Sales Analysis – SQL Project

## 📌 Project Overview

This SQL project explores a retail transactions dataset to uncover insights related to customer behavior, product category performance, and time-based sales trends. The dataset contains details about sale times, customer demographics, product categories, and profitability metrics.

The goal of this project is to demonstrate SQL skills through data cleaning, analysis, and use of advanced SQL techniques such as CTEs, window functions, and subqueries.

---

## 🎯 Goals

- Analyze total revenue, quantity sold, and profit over time.
- Identify high-performing product categories and top customers.
- Examine customer patterns by gender, age, and time of day.
- Practice writing readable and modular SQL queries using advanced techniques.

---

## 🧩 Dataset Columns

| Column             | Description                                |
|--------------------|--------------------------------------------|
| `transactions_id`  | Unique ID for each transaction             |
| `sale_date`        | Date of the sale                           |
| `sale_time`        | Time of the sale                           |
| `customer_id`      | Customer identifier                        |
| `gender`           | Gender of the customer                     |
| `age`              | Age of the customer                        |
| `category`         | Product category                           |
| `quantity`         | Number of units sold                       |
| `price_per_unit`   | Price per unit                             |
| `cogs`             | Cost of goods sold                         |
| `total_sale`       | Total sale amount (quantity × price)       |

---

## ⚙️ Techniques & SQL Concepts Used

### ✅ Data Cleaning
- Checked for null values, negative or zero quantities and prices.
- Verified date and time formatting for consistency.

### ✅ CTEs (Common Table Expressions)
Used for simplifying complex queries into readable parts.

###Key Business Insights
🕐 Peak Sales Hours: 12 PM – 2 PM had the highest sales activity.

🛒 Top-Selling Categories: "Home Essentials" and "Electronics" led in both quantity and revenue.

👥 Customer Trends: Ages 25–34 were the most active buyers.

📈 Gender Analysis: Male customers had slightly higher average purchase value.

💰 Top Customers: The top 5% of customers contributed to a large portion of total profit.

###Final Thoughts
This project demonstrates practical SQL skills for real-world data analysis — from cleaning and organizing data to extracting strategic insights using CTEs, window functions, and subqueries.

###Tools Used
SQL (MySQL / PostgreSQL compatible)

