# Write your MySQL query statement below
SELECT IF(id < (SELECT COUNT(id) FROM Seat), IF(id % 2 = 1, id + 1, id - 1), IF(id % 2 = 0, id - 1, id)) AS id, 
       student
FROM Seat
ORDER BY id ASC