#report of courses and their average grades

SELECT c.courses_title AS 'Title', AVG(g.grades_grade) AS 'Average'
FROM courses c
JOIN grades g
ON courses_id = grades_courses_id
GROUP BY c.courses_id
ORDER BY AVG(g.grades_grade) ASC;