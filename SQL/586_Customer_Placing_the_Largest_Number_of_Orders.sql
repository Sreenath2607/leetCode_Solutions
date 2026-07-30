-- LeetCode 586. Customer Placing the Largest Number of Orders

/*
Table: Orders

+-----------------+------+
| Column Name     | Type |
+-----------------+------+
| order_number    | int  |
| customer_number | int  |
+-----------------+------+

order_number is the primary key.

Task:
Find the customer_number of the customer who has placed
the largest number of orders.
It is guaranteed that exactly one customer has the most orders.
*/

SELECT
    customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1;

/*
Approach:
1. Group all orders by customer_number.
2. Count the number of orders for each customer.
3. Sort the counts in descending order.
4. Return the top customer using LIMIT 1.

SQL Concepts Used:
- GROUP BY
- COUNT(*)
- ORDER BY
- LIMIT

Pattern:
GROUP BY → Aggregate → ORDER BY Aggregate → LIMIT
