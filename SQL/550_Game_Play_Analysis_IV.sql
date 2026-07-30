-- LeetCode 550. Game Play Analysis IV

/*
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

Task:
Write a solution to report the fraction of players that logged in again
on the day immediately after the day they first logged in.
Round the answer to 2 decimal places.
*/

SELECT
    ROUND(
        COUNT(DISTINCT a.player_id) /
        (SELECT COUNT(DISTINCT player_id) FROM Activity),
        2
    ) AS fraction
FROM
(
    SELECT
        player_id,
        MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
) a
JOIN Activity b
ON a.player_id = b.player_id
AND b.event_date = DATE_ADD(a.first_date, INTERVAL 1 DAY);

/*
Approach:
1. Find each player's first login date.
2. Join the result back to Activity.
3. Check if the player logged in exactly one day after the first login.
4. Count such players.
5. Divide by the total number of distinct players.
6. Round to two decimal places.

Pattern:
Aggregate (MIN) → Join Back → Filter → Count → Ratio
*/