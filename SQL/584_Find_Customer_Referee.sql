-- LeetCode 584. Find Customer Referee

/*
Table: Customer

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+

id is the primary key.

Task:
Find the names of customers who were NOT referred by the customer
with id = 2.
Include customers whose referee_id is NULL.
Return the result in any order.
*/

SELECT
    name
FROM Customer
WHERE referee_id != 2
   OR referee_id IS NULL;

/*
Approach:
1. Select customer names.
2. Exclude customers whose referee_id is 2.
3. Include customers with NULL referee_id because they have no referee.

SQL Concepts Used:
- WHERE
- Comparison Operators (!=)
- NULL Handling
- OR Operator

