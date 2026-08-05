-- LeetCode 1378. Replace Employee ID With The Unique Identifier

/*
Table: Employees

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+

id is the primary key.

Table: EmployeeUNI

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| unique_id   | int     |
+-------------+---------+

id is the primary key.

Task:
Show the unique_id of each employee.
If an employee does not have a unique_id, return NULL.

Return the employee's unique_id and name.
*/

SELECT
    eu.unique_id,
    e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu
ON e.id = eu.id;

/*
Approach:
1. Start with the Employees table since every employee must appear.
2. LEFT JOIN EmployeeUNI using the employee id.
3. Employees without a matching unique_id will automatically have NULL.
4. Return unique_id and employee name.

SQL Concepts Used:
- LEFT JOIN
- SELECT
- ON

Pattern:
LEFT JOIN → Keep All Rows from Left Table
*/