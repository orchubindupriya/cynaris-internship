-- SQL JOINS - WEEK 1 DAY 2

-- 1. Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

-- 2. Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2)
);

-- 3. Insert customer records
INSERT INTO Customers VALUES
(1, 'Ravi', 'Chittoor'),
(2, 'Priya', 'Bangalore'),
(3, 'Arun', 'Chennai');

-- 4. Insert order records
INSERT INTO Orders VALUES
(101, 1, 5000),
(102, 2, 3000),
(103, 1, 2000);

-- 5. INNER JOIN
SELECT Customers.customer_name, Orders.amount
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- 6. LEFT JOIN
SELECT Customers.customer_name, Orders.amount
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- 7. RIGHT JOIN
SELECT Customers.customer_name, Orders.amount
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;