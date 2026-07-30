-- LeetCode 577. Employee Bonus

/*
Table: Employee

+-------+---------+
| Column Name | Type |
+-------------+------+
| empId       | int  |
| name        | varchar |
| supervisor  | int  |
| salary      | int  |
+-------------+------+

empId is the primary key.

Table: Bonus

+-------------+------+
| Column Name | Type |
+-------------+------+
| empId       | int  |
| bonus       | int  |
+-------------+------+

empId is a foreign key referencing Employee.

Task:
Report the name and bonus amount of each employee
whose bonus is less than 1000.
Include employees who have not received any bonus.
Return the result in any order.
*/

SELECT
    e.name AS name,
    b.bonus AS bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000
   OR b.bonus IS NULL;

/*
Approach:
1. Perform a LEFT JOIN between Employee and Bonus.
2. LEFT JOIN ensures all employees are included, even if they don't have a bonus.
3. Filter employees whose bonus is less than 1000.
4. Include employees with NULL bonuses using OR bonus IS NULL.