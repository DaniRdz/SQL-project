#Group students by the courses that they are enrolled in

SELECT c.courses_id, c.courses_title AS 'Title', COUNT(s.students_id) AS 'Students'
FROM courses c
LEFT JOIN enrollments e
ON c.courses_id = e.enrollments_courses_id
LEFT JOIN students s
ON s.students_id = enrollments_students_id
GROUP BY c.courses_id;