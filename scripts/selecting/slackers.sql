SELECT first_name, last_name 
FROM students
WHERE NOT EXISTS(
  SELECT first_name,last_name, projects.id AS project_id
FROM students_to_projects
INNER JOIN students ON students.id = student_id 
INNER JOIN projects ON projects.id = project_id
WHERE  students.id != student_id);