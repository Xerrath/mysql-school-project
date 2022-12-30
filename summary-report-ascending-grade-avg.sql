USE devcamp_school_sql_schema;

SELECT 
	c.courses_class AS class,
    AVG(g.grades_course) AS avg_grade
FROM grades g
LEFT JOIN courses c
ON c.courses_id = g.grades_courses_id
GROUP BY class
ORDER BY avg_grade ASC;