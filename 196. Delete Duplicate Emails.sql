# Write your MySQL query statement below
DELETE
FROM Person
WHERE id NOT IN (SELECT t.id FROM
                 (SELECT MIN(id) AS id
                  FROM Person
                  GROUP BY email) t)