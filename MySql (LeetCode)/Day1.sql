/*
Problem 1378. Replace Employee ID With The Unique Identifier
Easy

Table: `Employees`
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
+---------------+---------+
`id` is the primary key for this table.

Table: `EmployeeUNI`
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| unique_id     | int     |
+---------------+---------+
The composite key (`id`, `unique_id`) is unique for this table.

Write an SQL query to return each employee's `unique_id` and `name`.
If an employee does not have a `unique_id` in `EmployeeUNI`, show NULL for `unique_id`.

Return the result in any order.

Example
Employees table:
+----+----------+
| id | name     |
+----+----------+
| 1  | Alice    |
| 7  | Bob      |
| 11 | Meir     |
| 90 | Winston  |
| 3  | Jonathan |
+----+----------+

EmployeeUNI table:
+----+-----------+
| id | unique_id |
+----+-----------+
| 3  | 1         |
| 11 | 2         |
| 90 | 3         |
+----+-----------+

Expected output:
+-----------+----------+
| unique_id | name     |
+-----------+----------+
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |
+-----------+----------+

Solution:
Use a LEFT JOIN from `Employees` to `EmployeeUNI` so employees without a
matching `unique_id` will show NULL.

-- SQL query
SELECT eu.unique_id, e.name
FROM Employees AS e
LEFT JOIN EmployeeUNI AS eu
    ON e.id = eu.id;

Explanation:
- The `LEFT JOIN` keeps all rows from `Employees`.
- For employees without a matching row in `EmployeeUNI`, `eu.unique_id` is NULL.

Added to Day 1.
*/

-- Solution L0
# Write your MySQL query statement below
# Write your MySQL query statement below
SELECT eu.unique_id,
       e.name
FROM Employees AS e
LEFT JOIN EmployeeUNI AS eu
    ON e.id = eu.id;

