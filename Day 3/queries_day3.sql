
-- ==========================================
-- CYNARIS SOLUTIONS
-- WEEK 1 - DAY 3
-- SQL AGGREGATIONS: GROUP BY & HAVING
-- ==========================================

-- QUERY 1: COUNT
-- Count total sales records

SELECT COUNT(*) AS total_sales
FROM sales;


-- QUERY 2: SUM
-- Calculate total revenue

SELECT SUM(amount) AS total_revenue
FROM sales;


-- QUERY 3: AVG
-- Calculate average sales amount

SELECT AVG(amount) AS average_sales
FROM sales;


-- QUERY 4: MAX
-- Find highest sales amount

SELECT MAX(amount) AS highest_sale
FROM sales;


-- QUERY 5: MIN
-- Find lowest sales amount

SELECT MIN(amount) AS lowest_sale
FROM sales;


-- QUERY 6: GROUP BY CATEGORY
-- Calculate total sales for each category

SELECT
    category,
    SUM(amount) AS total_sales
FROM sales
GROUP BY category;


-- QUERY 7: GROUP BY CITY
-- Calculate total sales for each city

SELECT
    city,
    SUM(amount) AS total_sales
FROM sales
GROUP BY city;


-- QUERY 8: HAVING
-- Find categories with total sales greater than 30000

SELECT
    category,
    SUM(amount) AS total_sales
FROM sales
GROUP BY category
HAVING SUM(amount) > 30000;


-- WINDOW FUNCTION
-- Calculate category-wise total sales
-- Without combining individual records

SELECT
    customer_name,
    category,
    amount,
    SUM(amount) OVER (
        PARTITION BY category
    ) AS category_total
FROM sales;


-- ==========================================
-- END OF DAY 3 SQL TASK
-- ==========================================
