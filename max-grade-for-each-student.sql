USE devcamp_school_sql_schema;

SELECT s.students_id, s.students_last_name, MAX(g.grades_course)
FROM students s
LEFT JOIN grades g
ON g.grades_students_id = s.students_id
GROUP BY s.students_id;