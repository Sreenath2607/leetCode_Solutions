-- LeetCode 1581. Customer Who Visited but Did Not Make Any Transactions

/*
Table: Visits

+-------------+------+
| Column Name | Type |
+-------------+------+
| visit_id    | int  |
| customer_id | int  |
+-------------+------+

visit_id is the primary key.

Table: Transactions

+----------------+------+
| Column Name    | Type |
+----------------+------+
| transaction_id | int  |
| visit_id       | int  |
| amount         | int  |
+----------------+------+

transaction_id is the primary key.

Task:
Find the IDs of customers who visited but did not make any transactions,
along with the number of such visits.

Return the result in any order.
*/

SELECT
    v.customer_id,
    COUNT(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;

/*
Approach:
1. Start with the Visits table.
2. LEFT JOIN Transactions using visit_id.
3. Keep only visits with no matching transaction.
4. Group by customer_id.
5. Count the visits without transactions for each customer.

SQL Concepts Used:
- LEFT JOIN
- WHERE
- IS NULL
- GROUP BY
- COUNT()

Pattern:
LEFT JOIN → IS NULL → GROUP BY
*/