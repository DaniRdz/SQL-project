#The top grades for each student

SELECT s.students_name AS'Name', MAX(g.grades_grade) AS 'max grades'
FROM grades g
JOIN students s
ON s.students_id = grades_students_id
GROUP BY grades_students_id;