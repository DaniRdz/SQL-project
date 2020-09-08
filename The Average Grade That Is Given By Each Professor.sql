#The average grade that is given by each professor

SELECT p.professors_name AS 'Name', AVG(g.grades_grade) AS 'average'
FROM grades g
JOIN professors p
ON p.professors_id = g.grades_profesors_id
GROUP BY grades_profesors_id;