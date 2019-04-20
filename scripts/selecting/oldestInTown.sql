SELECT min(date_of_birth), town_of_origin
FROM students
GROUP BY town_of_origin
ORDER BY town_of_origin DESC;