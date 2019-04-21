SELECT students.id,first_name,last_name, projects.name,projects.id AS project_id
FROM students_to_projects
INNER JOIN students ON students.id = student_id 
INNER JOIN projects ON projects.id = project_id
ORDER BY 
  student_id ASC;