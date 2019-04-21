SELECT first_name, last_name,(extract(year from current_date) - extract(year from date_of_birth)) AS  Age
FROM students
WHERE (extract(year from current_date) - extract(year from date_of_birth)) > 25;