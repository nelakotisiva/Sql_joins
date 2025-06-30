-- Create Tables
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert Data
INSERT INTO Customers VALUES
(1, 'Alice', 'Delhi'),
(2, 'Bob', 'Mumbai'),
(3, 'Charlie', 'Chennai'),
(4, 'David', 'Kolkata'),
(5, 'Eva', 'Hyderabad');  -- ✅ Add missing customer

INSERT INTO Orders VALUES
(101, 1, '2025-06-01', 1200.00),
(102, 1, '2025-06-10', 1500.00),
(103, 2, '2025-06-15', 800.00),
(104, 5, '2025-06-20', 500.00);  -- ✅ Now valid

-- INNER JOIN
SELECT 
    Customers.customer_id,
    Customers.name AS customer_name,
    Orders.order_id,
    Orders.amount
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- LEFT JOIN
SELECT 
    Customers.customer_id,
    Customers.name AS customer_name,
    Orders.order_id,
    Orders.amount
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- RIGHT JOIN (MySQL only)
SELECT 
    Customers.customer_id,
    Customers.name AS customer_name,
    Orders.order_id,
    Orders.amount
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- FULL OUTER JOIN (emulated using UNION)
SELECT 
    Customers.customer_id,
    Customers.name AS customer_name,
    Orders.order_id,
    Orders.amount
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id

UNION

SELECT 
    Customers.customer_id,
    Customers.name AS customer_name,
    Orders.order_id,
    Orders.amount
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;
