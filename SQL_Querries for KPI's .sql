use [Pizza DB]

select * from pizza_sales

---- KPI REQUIREMENT

-- 1. Total Revenue
Select SUM(total_price) as Total_Revenue from pizza_sales;

-- 2. Avg Order Value
Select SUM(total_price)/COUNT(Distinct order_id) as Avg_Order_Value from pizza_sales;

-- 3. Total Pizza Sold
Select SUM(quantity) as Total_Pizza_Sold from pizza_sales;

-- 4. Total Orders
Select Count(Distinct order_id) as Total_Orders from pizza_sales;

-- 5. Avg Pizza Per Order
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM pizza_sales;


---- Pivot Tables

-- 1. Daily Trend for Total Orders
Select Datename(DW, order_date) as Order_day, 
Count(Distinct order_id) as Total_Orders 
from pizza_sales
Group by Datename(DW,order_date);

-- 2. Hourly Trend for Total Orders
Select DATEPART(HOUR, order_time) as Order_Hours, 
Count(Distinct order_id) as Total_Orders 
from pizza_sales
Group by DATEPART(HOUR,order_time)
Order by DATEPART(HOUR, order_time);

-- 3. % of Sales by Pizza Category
Select pizza_category, CAST(SUM(total_price) as decimal(10,2)) as Total_Revenue, 
CAST(SUM(total_price) * 100 / (Select SUM(total_price) from pizza_sales) as decimal(10,2)) as PCT 
from pizza_sales
where month(order_date) = 1
Group by pizza_category;

Select pizza_category, CAST(SUM(total_price) as decimal(10,2)) as Total_Revenue, 
CAST(SUM(total_price) * 100 / (Select SUM(total_price) from pizza_sales) as decimal(10,2)) as PCT 
from pizza_sales
Group by pizza_category;

-- 4. % of Sales by Pizza Size
Select pizza_size, CAST(SUM(total_price) as decimal(10,2)) as Total_Revenue, 
CAST(SUM(total_price) * 100 / (Select SUM(total_price) from pizza_sales) as decimal(10,2)) as PCT
from pizza_sales
Group by pizza_size
Order by pizza_size;

-- 5. Total Pizza Sold by Pizza Category
Select pizza_category, SUM(quantity) as Total_Quantity_Sold 
from pizza_sales
Group by pizza_category
Order by Total_Quantity_Sold DESC;

-- 6. Top 5 Best Sellers by Total Pizza Sold
Select Top 5 pizza_name, SUM(quantity) as Total_Quantity_Sold
from pizza_sales
Group by pizza_name
Order by Total_Quantity_Sold DESC;

-- 7. Top 5 Worst Sellers by Total Pizza Sold
Select Top 5 pizza_name, SUM(quantity) as Total_Quantity_Sold
from pizza_sales
Group by pizza_name
Order by Total_Quantity_Sold ASC;