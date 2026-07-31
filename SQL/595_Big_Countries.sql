-- LeetCode 595. Big Countries

/*
Table: World

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |
+-------------+---------+

name is the primary key.

Task:
A country is considered big if:
1. It has an area of at least 3,000,000 km², or
2. It has a population of at least 25,000,000.

Return the name, population, and area of all big countries.
*/

SELECT
    name,
    population,
    area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;

/*
Approach:
1. Select the required columns.
2. Filter countries satisfying either of the two conditions.
3. Return the matching records.

SQL Concepts Used:
- SELECT
- WHERE
- OR Operator
- Comparison Operators

Pattern:
Simple Filtering using WHERE + OR
*/