-- LeetCode 607. Sales Person

/*
Table: SalesPerson

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| sales_id       | int     |
| name           | varchar |
| salary         | int     |
| commission_rate| int     |
| hire_date      | date    |
+----------------+---------+

sales_id is the primary key.

Table: Company

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| com_id      | int     |
| name        | varchar |
| city        | varchar |
+-------------+---------+

com_id is the primary key.

Table: Orders

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| order_id    | int     |
| order_date  | date    |
| com_id      | int     |
| sales_id    | int     |
| amount      | int     |
+-------------+---------+

order_id is the primary key.

Task:
Find the names of all salespersons who did not have any orders
related to the company named "RED".

Return the result in any order.
*/

SELECT
    name
FROM SalesPerson
WHERE sales_id NOT IN
(
    SELECT
        o.sales_id
    FROM Orders o
    JOIN Company c
    ON o.com_id = c.com_id
    WHERE c.name = 'RED'
);

/*
Approach:
1. Find all salespersons who have sold to the company "RED".
2. Exclude those salespersons using NOT IN.
3. Return the remaining salespersons.

SQL Concepts Used:
- JOIN
- Subquery
- NOT IN
- WHERE

Pattern:
NOT IN → Exclude Matching Records