SELECT name, checkins.id,students.first_name
FROM projects
INNER JOIN students on students.id =  projects.id
INNER JOIN checkins on checkins.id = students.id
WHERE  EXTRACT(month from checked_in_at) = 6;