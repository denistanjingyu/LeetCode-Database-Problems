# Write your MySQL query statement below
WITH ranked_table AS (
    SELECT name, salary, departmentId, DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS ranking
    FROM Employee
)

SELECT Department.name AS Department, ranked_table.name AS Employee, ranked_table.salary AS salary
FROM ranked_table
JOIN Department
ON ranked_table.departmentId = Department.id
WHERE ranking BETWEEN 1 AND 3