-- LeetCode 1683. Invalid Tweets

/*
Table: Tweets

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| tweet_id    | int     |
| content     | varchar |
+-------------+---------+

tweet_id is the primary key.

Task:
Find the IDs of tweets whose content length is strictly greater than 15 characters.

Return the result in any order.
*/

SELECT
    tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

/*
Approach:
1. Calculate the length of each tweet using LENGTH().
2. Filter tweets whose content length is greater than 15.
3. Return the corresponding tweet_id.

SQL Concepts Used:
- WHERE
- LENGTH()
- Comparison Operators

Pattern:
String Functions → Filtering
*/