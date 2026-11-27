
-- CYNARIS SOLUTIONS
-- SQL SUBQUERIES & CTEs
-- WEEK 1 DAY 4

-- TASK 1: NON-CORRELATED SUBQUERY
-- Find above-average sales

SELECT *
FROM sales
WHERE amount > (
    SELECT AVG(amount)
    FROM sales
);

-- TASK 2: CORRELATED SUBQUERY
-- Find top performer in each city

SELECT
    s1.customer_name,
    s1.city,
    s1.product,
    s1.amount
FROM sales s1
WHERE s1.amount = (
    SELECT MAX(s2.amount)
    FROM sales s2
    WHERE s2.city = s1.city
);

-- TASK 3: CTE USING WITH CLAUSE

WITH high_sales AS (
    SELECT *
    FROM sales
    WHERE amount > (
        SELECT AVG(amount)
        FROM sales
    )
)
SELECT *
FROM high_sales;

-- TASK 4: TWO CHAINED CTEs

WITH city_sales AS (
    SELECT
        city,
        SUM(amount) AS total_sales
    FROM sales
    GROUP BY city
),
average_city_sales AS (
    SELECT AVG(total_sales) AS avg_sales
    FROM city_sales
)
SELECT *
FROM city_sales
WHERE total_sales > (
    SELECT avg_sales
    FROM average_city_sales
);

-- END OF DAY 4
