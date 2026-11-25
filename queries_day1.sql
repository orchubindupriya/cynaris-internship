
-- SQL Fundamentals - Week 1 Day 1

-- Query 1: Display all records
SELECT * FROM sales;

-- Query 2: Display customer name and amount
SELECT customer_name, amount FROM sales;

-- Query 3: Sales greater than 10000
SELECT * FROM sales WHERE amount > 10000;

-- Query 4: Bengaluru sales above 10000
SELECT * FROM sales
WHERE city = 'Bengaluru' AND amount > 10000;

-- Query 5: Chennai or Hyderabad sales
SELECT * FROM sales
WHERE city = 'Chennai' OR city = 'Hyderabad';

-- Query 6: Exclude Furniture
SELECT * FROM sales
WHERE NOT category = 'Furniture';

-- Query 7: Customer names starting with P
SELECT * FROM sales
WHERE customer_name LIKE 'P%';

-- Query 8: Bengaluru and Chennai sales
SELECT * FROM sales
WHERE city IN ('Bengaluru', 'Chennai');

-- Query 9: Amount between 2000 and 30000
SELECT * FROM sales
WHERE amount BETWEEN 2000 AND 30000;

-- Query 10: Records with missing discount
SELECT * FROM sales
WHERE discount IS NULL;
