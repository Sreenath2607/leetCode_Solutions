-- LeetCode 196. Delete Duplicate Emails

/*
Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+

id is the primary key.

Task:
Delete all duplicate email records, keeping only the record
with the smallest id for each email.
*/

DELETE p1
FROM Person p1
JOIN Person p2
ON p1.email = p2.email
AND p1.id > p2.id;

/*
Approach:
1. Self join the Person table on email.
2. Match duplicate email records.
3. Compare ids.
4. Delete the record with the larger id.
5. Keep only the smallest id for each email.

SQL Concepts Used:
- DELETE with JOIN
- SELF JOIN
- Comparison Operators

Pattern:
SELF JOIN → DELETE Duplicates
*/