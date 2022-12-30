USE devcamp_school_sql_schema;

SELECT *
FROM students s
LEFT JOIN courses c
ON s.students_id = c.courses_students_id
LEFT JOIN teachers t
ON c.courses_teachers_id = t.teachers_id
LEFT JOIN grades g
ON c.courses_id = g.grades_courses_id
ORDER BY c.courses_class;