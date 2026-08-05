-- LeetCode 1757. Recyclable and Low Fat Products

/*
Table: Products

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+

product_id is the primary key.

Task:
Find the ids of products that are both low fat and recyclable.

Return the result in any order.
*/

SELECT
    product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';

/*
Approach:
1. Filter products marked as low fat.
2. Filter products marked as recyclable.
3. Return the product IDs satisfying both conditions.

SQL Concepts Used:
- SELECT
- WHERE
- AND

Pattern:
Simple Filtering using WHERE + AND
*/