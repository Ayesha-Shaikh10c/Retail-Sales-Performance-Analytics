-- =====================================================
-- Retail Sales Performance Analytics - SQL Queries
-- Database: PostgreSQL
-- =====================================================

-- Query 1: Top 10 Products by Revenue
SELECT "Product Name", 
       ROUND(SUM("Sales")::numeric, 2) AS Total_Revenue
FROM sales
GROUP BY "Product Name"
ORDER BY Total_Revenue DESC
LIMIT 10;


-- Query 2: Regional Performance (Sales & Profit)
SELECT "Region",
       ROUND(SUM("Sales")::numeric, 2) AS Total_Sales,
       ROUND(SUM("Profit")::numeric, 2) AS Total_Profit
FROM sales
GROUP BY "Region"
ORDER BY Total_Sales DESC;


-- Query 3: Monthly Sales Trend
SELECT 
    EXTRACT(YEAR FROM "Order Date"::date) AS Year,
    EXTRACT(MONTH FROM "Order Date"::date) AS Month,
    ROUND(SUM("Sales")::numeric, 2) AS Monthly_Sales
FROM sales
GROUP BY Year, Month
ORDER BY Year, Month;


-- Query 4: Category Performance (Sales, Profit, Avg Discount)
SELECT "Category",
       ROUND(SUM("Sales")::numeric, 2) AS Total_Sales,
       ROUND(SUM("Profit")::numeric, 2) AS Total_Profit,
       ROUND(AVG("Discount")::numeric * 100, 2) AS Avg_Discount_Pct
FROM sales
GROUP BY "Category"
ORDER BY Total_Sales DESC;


-- Query 5: Customer Segment Performance
SELECT "Segment",
       ROUND(SUM("Sales")::numeric, 2) AS Total_Sales,
       ROUND(SUM("Profit")::numeric, 2) AS Total_Profit,
       COUNT(DISTINCT "Customer ID") AS Total_Customers
FROM sales
GROUP BY "Segment"
ORDER BY Total_Sales DESC;


-- Query 6: Top 10 Loss Making Products
SELECT "Product Name",
       ROUND(SUM("Profit")::numeric, 2) AS Total_Profit
FROM sales
GROUP BY "Product Name"
ORDER BY Total_Profit ASC
LIMIT 10;


-- Query 7: Discount Impact on Profit
SELECT 
    CASE 
        WHEN "Discount" = 0 THEN 'No Discount'
        WHEN "Discount" <= 0.2 THEN 'Low (0-20%)'
        WHEN "Discount" <= 0.4 THEN 'Medium (20-40%)'
        ELSE 'High (40%+)'
    END AS Discount_Band,
    ROUND(AVG("Profit")::numeric, 2) AS Avg_Profit,
    COUNT(*) AS Total_Orders
FROM sales
GROUP BY Discount_Band
ORDER BY Avg_Profit DESC;


-- Query 8: Year over Year Sales Growth
SELECT 
    EXTRACT(YEAR FROM "Order Date"::date) AS Year,
    ROUND(SUM("Sales")::numeric, 2) AS Total_Sales
FROM sales
GROUP BY Year
ORDER BY Year;


-- Query 9: Top 10 States by Sales
SELECT "State",
       ROUND(SUM("Sales")::numeric, 2) AS Total_Sales,
       ROUND(SUM("Profit")::numeric, 2) AS Total_Profit
FROM sales
GROUP BY "State"
ORDER BY Total_Sales DESC
LIMIT 10;


-- Query 10: Shipping Mode Performance
SELECT "Ship Mode",
       COUNT(*) AS Total_Orders,
       ROUND(SUM("Sales")::numeric, 2) AS Total_Sales,
       ROUND(AVG("Sales")::numeric, 2) AS Avg_Order_Value
FROM sales
GROUP BY "Ship Mode"
ORDER BY Total_Orders DESC;