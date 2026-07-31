-- LeetCode 585. Investments in 2016

/*
Table: Insurance

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| pid         | int     |
| tiv_2015    | float   |
| tiv_2016    | float   |
| lat         | float   |
| lon         | float   |
+-------------+---------+

pid is the primary key.

Task:
Report the sum of all tiv_2016 values where:
1. The tiv_2015 value is shared by one or more other policyholders.
2. The (lat, lon) location is unique.

Round the answer to 2 decimal places.
*/

SELECT
    ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)
AND (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
);

/*
Approach:
1. Find tiv_2015 values that appear more than once.
2. Find locations (lat, lon) that appear exactly once.
3. Select records satisfying both conditions.
4. Sum their tiv_2016 values.
5. Round the result to two decimal places.

SQL Concepts Used:
- Subqueries
- IN
- GROUP BY
- HAVING
- Aggregate Functions
- Composite Columns

Pattern:
Filter Using Multiple Subqueries → Aggregate Result
*/