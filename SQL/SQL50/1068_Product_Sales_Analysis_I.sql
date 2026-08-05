-- LeetCode 1068. Product Sales Analysis I

/*
Table: Sales

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| sale_id     | int     |
| product_id  | int     |
| year        | int     |
| quantity    | int     |
| price       | int     |
+-------------+---------+

(sale_id, year) is the primary key.

Table: Product

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |
+--------------+---------+

product_id is the primary key.

Task:
Report the product_name, year, and price for each sale.

Return the result in any order.
*/

SELECT
    p.product_name,
    s.year,
    s.price
FROM Sales s
INNER JOIN Product p
ON s.product_id = p.product_id;

/*
Approach:
1. Join the Sales and Product tables using product_id.
2. Retrieve the product name from Product.
3. Retrieve the year and price from Sales.
4. Return the required columns.

SQL Concepts Used:
- INNER JOIN
- SELECT
- ON

Pattern:
INNER JOIN → Retrieve Related Data
*/