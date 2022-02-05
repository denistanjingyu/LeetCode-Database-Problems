# Write your MySQL query statement below
SELECT w2.id
FROM Weather w1
INNER JOIN Weather w2
ON w2.id - w1.id = 1
AND w2.temperature > w1.temperature