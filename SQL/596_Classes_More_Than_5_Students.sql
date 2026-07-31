-- LeetCode 596. Classes More Than 5 Students

/*
Table: Courses

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| student     | varchar |
| class       | varchar |
+-------------+---------+

(student, class) is the primary key.

Task:
Find all classes that have at least 5 students.

Return the result in any order.
*/

SELECT
    class
FROM Courses
GROUP BY class
HAVING COUNT(*) >= 5;

/*
Approach:
1. Group records by class.
2. Count the number of students in each class.
3. Return classes having at least 5 students.

SQL Concepts Used:
- GROUP BY
- HAVING
- COUNT()

Pattern:
GROUP BY → HAVING → COUNT
*/