-- LeetCode 1148. Article Views I

/*
Table: Views

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| article_id    | int     |
| author_id     | int     |
| viewer_id     | int     |
| view_date     | date    |
+---------------+---------+

There is no primary key for this table.
Each row indicates that a viewer viewed an article on a given date.

Task:
Find all authors who viewed at least one of their own articles.

Return the result sorted by id in ascending order.
*/

SELECT
    DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id;

/*
Approach:
1. Compare author_id and viewer_id in the same row.
2. Select rows where the author viewed their own article.
3. Remove duplicate authors using DISTINCT.
4. Sort the result by author_id.

SQL Concepts Used:
- DISTINCT
- WHERE
- ORDER BY
- Column Comparison

Pattern:
Filtering → DISTINCT
*/
