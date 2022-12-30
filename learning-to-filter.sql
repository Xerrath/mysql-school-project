USE devcamp_school_sql_schema;

SELECT
	s.students_id,
	s.students_last_name,
    s.students_first_name,
    t.teachers_last_name,
    COUNT(*) AS counter
FROM students s
LEFT JOIN courses c
ON c.courses_students_id = s.students_id
LEFT JOIN teachers t
ON t.teachers_id = c.courses_teachers_id
GROUP BY t.teachers_last_name, s.students_id, s.students_last_name, s.students_first_name
HAVING (counter > 2);