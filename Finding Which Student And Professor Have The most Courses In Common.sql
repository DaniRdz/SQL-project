#Finding which student and professor have the most courses in common

SELECT 
	s.students_name AS 'Students Name',
    p.professors_name AS 'Professors Name',
    COUNT(*) AS 'Common Courses'
FROM grades g
JOIN students s
ON s.students_id = g.grades_students_id
JOIN professors p
ON p.professors_id = g.grades_profesors_id
GROUP BY grades_students_id, grades_profesors_id
ORDER BY COUNT(*) DESC;