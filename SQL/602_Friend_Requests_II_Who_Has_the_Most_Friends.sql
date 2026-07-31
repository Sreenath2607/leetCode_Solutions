-- LeetCode 602. Friend Requests II: Who Has the Most Friends

/*
Table: RequestAccepted

+----------------+------+
| Column Name    | Type |
+----------------+------+
| requester_id   | int  |
| accepter_id    | int  |
| accept_date    | date |
+----------------+------+

(requester_id, accepter_id) is the primary key.

Task:
Find the person who has the most friends.
Return the person's id and the total number of friends.
*/

SELECT
    id,
    COUNT(*) AS num
FROM
(
    SELECT requester_id AS id
    FROM RequestAccepted

    UNION ALL

    SELECT accepter_id AS id
    FROM RequestAccepted
) a
GROUP BY id
ORDER BY COUNT(*) DESC
LIMIT 1;

/*
Approach:
1. Collect all requester_ids and accepter_ids into one column using UNION ALL.
2. Each occurrence represents one friendship.
3. Group by id.
4. Count the total friendships for each person.
5. Return the person with the highest count.

SQL Concepts Used:
- UNION ALL
- GROUP BY
- COUNT()
- ORDER BY
- LIMIT

Pattern:
UNION ALL → GROUP BY → COUNT → ORDER BY → LIMIT
*/