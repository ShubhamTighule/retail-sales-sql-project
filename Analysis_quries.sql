--Create table--
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales
	(
		transactions_id INT PRIMARY KEY, 
        sale_date DATE,  
		sale_time TIME, 
		customer_id INT, 
		gender VARCHAR(15),
		age INT, 
		category VARCHAR(15),
		quatnity INT, 
		price_per_unit FLOAT, 
		cogs FLOAT, 
		total_sale FLOAT
	)

SELECT * FROM retail_sales; 

SELECT COUNT(*) FROM retail_sales; 

SELECT * FROM retail_sales
WHERE transactions_id IS NULL
 OR sale_date IS NULL
 OR sale_time IS NULL
 OR customer_id IS NULL
 OR gender IS NULL 
 OR  age IS NULL 
 OR category IS NULL 
 OR quantity IS NULL
 OR price_per_unit IS NULL
 OR cogs IS NULL
 OR total_sale IS NULL; 

ALTER TABLE retail_sales
RENAME COLUMN quatnity to quantity;

DELETE FROM retail_sales
WHERE quantity IS NULL 
OR price_per_unit IS NULL
OR cogs IS NULL 
OR total_Sale IS NULL
OR  age IS NULL ;

--Data Exploration--
--Basic Business Insights--
--Total Sales--
SELECT SUM(total_sale) AS total_revenue
FROM retail_sales;

-- Total number of transactions--
SELECT COUNT(*) AS total_transactions
FROM retail_sales;

--Top 5 selling categories:--
SELECT category, SUM(quantity) AS total_quantity
FROM retail_sales
GROUP BY category
ORDER BY total_quantity DESC
LIMIT 5;

--Customer Insights--
--Sales by Gender--
SELECT gender, SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY gender;

--Average age of customer by category--
SELECT category, ROUND(AVG(age), 1) AS avg_age
FROM retail_sales
GROUP BY category;

--Time based trends--
SELECT sale_date, SUM(total_sale) AS daily_sales
FROM retail_sales
GROUP BY sale_date
ORDER BY sale_date;

--Sales by hour--
SELECT HOUR(sale_time) AS hour, SUM(total_sale) AS sales_by_hour
FROM retail_sales
GROUP BY HOUR(sale_time)
ORDER BY hour;

--Profit analysis--
--Gross profit per category--
SELECT category, SUM(total_sale - cogs) AS gross_profit
FROM retail_sales
GROUP BY category
ORDER BY gross_profit DESC;

--Top 5 most profitable customers:--
SELECT customer_id, SUM(total_sale - cogs) AS profit
FROM retail_sales
GROUP BY customer_id
ORDER BY profit DESC
LIMIT 5;

--CTE's--
--Average daily sales--
WITH daily_sales AS (
  SELECT sale_date, SUM(total_sale) AS total
  FROM retail_sales
  GROUP BY sale_date
)
SELECT AVG(total) AS avg_daily_sales FROM daily_sales;
