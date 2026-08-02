-- LeetCode 610. Triangle Judgement

/*
Table: Triangle

+-------------+------+
| Column Name | Type |
+-------------+------+
| x           | int  |
| y           | int  |
| z           | int  |
+-------------+------+

(x, y, z) is the primary key.

Task:
For each row, determine whether the three side lengths
can form a triangle.

Return:
- 'Yes' if a triangle can be formed.
- 'No' otherwise.
*/

SELECT
    x,
    y,
    z,
    CASE
        WHEN x + y > z
         AND x + z > y
         AND y + z > x
        THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM Triangle;

/*
Approach:
1. Check the triangle inequality for all three pairs of sides.
2. If all conditions are satisfied, return 'Yes'.
3. Otherwise, return 'No'.

SQL Concepts Used:
- CASE
- Logical Operators (AND)
- Comparison Operators

Pattern:
CASE → Multiple Conditions
*/