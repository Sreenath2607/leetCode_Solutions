-- LeetCode 608. Tree Node

/*
Table: Tree

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| p_id        | int  |
+-------------+------+

id is the primary key.
Each node has at most one parent.

Task:
Classify each node in the tree as:
- Root : if the node has no parent.
- Inner: if the node has both a parent and at least one child.
- Leaf : if the node has a parent but no children.

Return the result in any order.
*/

SELECT
    id,
    CASE
        WHEN p_id IS NULL THEN 'Root'
        WHEN id IN (
            SELECT p_id
            FROM Tree
            WHERE p_id IS NOT NULL
        ) THEN 'Inner'
        ELSE 'Leaf'
    END AS type
FROM Tree;

/*
Approach:
1. Identify the Root node by checking for NULL parent.
2. Find all nodes that appear as a parent (p_id) for another node.
3. Classify those nodes as Inner.
4. Remaining nodes are Leaf nodes.

SQL Concepts Used:
- CASE
- Subquery
- IN
- IS NULL

Pattern:
CASE → Subquery → Classification
*/