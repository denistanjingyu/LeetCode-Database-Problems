# Write your MySQL query statement below
WITH ranked_table AS (
    SELECT Department.name AS Department, 
           Employee.name AS Employee, 
           Employee.salary AS Salary,
           RANK() OVER(PARTITION BY Employee.departmentId ORDER BY Employee.salary DESC) AS salary_rank
    FROM Employee
    INNER JOIN Department
    ON Employee.departmentId = Department.id
)

SELECT Department, 
       Employee, 
       Salary
FROM ranked_table
WHERE salary_rank = 1
