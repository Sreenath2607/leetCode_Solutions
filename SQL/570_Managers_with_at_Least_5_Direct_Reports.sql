-- LeetCode 570. Managers with at Least 5 Direct Reports

/*
Table: Employee

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |
+-------------+---------+

id is the primary key.

Task:
Find the names of managers who have at least
5 direct reports.

Return the result in any order.
*/

SELECT
    e.name
FROM Employee e
JOIN Employee b
ON e.id = b.managerId
GROUP BY e.id, e.name
HAVING COUNT(*) >= 5;

/*
Approach:
1. Perform a self join on the Employee table.
2. Match each manager with their direct reports.
3. Group the records by manager.
4. Count the number of employees reporting to each manager.
5. Return managers having at least 5 direct reports.

SQL Concepts Used:
- SELF JOIN
- GROUP BY
- HAVING
- COUNT()

Pattern:
SELF JOIN → GROUP BY → HAVING
*/