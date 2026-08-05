-- LeetCode 197. Rising Temperature

/*
Table: Weather

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| recordDate  | date |
| temperature | int  |
+-------------+------+

id is the primary key.

Task:
Find all dates where the temperature was higher than the previous day.

Return the corresponding ids.
*/

SELECT
    w1.id
FROM Weather w1
JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;

/*
Approach:
1. Self join the Weather table.
2. Match each record with the previous day's record.
3. Compare temperatures.
4. Return the id where today's temperature is higher than yesterday's.

SQL Concepts Used:
- SELF JOIN
- DATEDIFF()
- WHERE

Pattern:
SELF JOIN → Compare Previous Row
*/