/*
============================================================
LeetCode: 511. Game Play Analysis I
Difficulty: Easy

Problem
-------
Table: Activity

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |
+--------------+---------+

(player_id, event_date) is the primary key.

Task
----
Find the first login date for each player.

Output
------
+-----------+-------------+
| player_id | first_login |
+-----------+-------------+

Concepts Used
-------------
- GROUP BY
- MIN()
- Aggregate Functions

Solution
============================================================
*/

SELECT
    player_id,
    MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;