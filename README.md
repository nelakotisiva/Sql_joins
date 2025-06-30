# Sql_joins
The main goal is to understand how to combine data from multiple tables using various types of SQL JOINs. Specifically, this involves using two related tables: one for customers and one for orders. The focus is on retrieving meaningful combined information based on their relationship.

🔷 Tables Used
Customers Table
This table stores customer information such as ID, name, and city. Each customer has a unique ID.

Orders Table
This table contains order information such as order ID, order date, amount, and a customer ID that indicates who placed the order. The customer ID in this table is connected to the customer table using a foreign key, ensuring that every order is linked to a valid customer.

🔷 Data Insertion
Sample records are added into both tables. Some customers are given multiple orders to simulate real scenarios. One customer has no order to demonstrate the effect of LEFT JOIN. Also, a new customer is added to ensure that all JOIN types can be demonstrated properly without errors.

🔷 Join Types Explained
1. INNER JOIN
This type of join returns only those records where the customer and the order match based on the customer ID. It excludes customers without orders and orders without matching customers. It’s used when you want to focus only on customers who have actually placed orders.

2. LEFT JOIN (Left Outer Join)
This join returns all customers, whether they have placed an order or not. If a customer has not placed any order, the related order fields will be empty (NULL). This helps in identifying customers who haven’t made purchases yet.

3. RIGHT JOIN (Right Outer Join)
This join returns all orders, including those that may not be linked to a customer. If any order doesn’t have a corresponding customer, the customer-related fields will be empty. This type of join ensures that no order is left out of the result, even if it’s not linked to a valid customer (though this shouldn't happen when foreign key constraints are enforced).

4. FULL OUTER JOIN
This join is a combination of LEFT and RIGHT joins. It returns all customers and all orders, whether they match or not. If a customer has no order, order fields will be empty. If an order has no matching customer, customer fields will be empty. This join gives a complete picture of both tables, including all matches and mismatches.
