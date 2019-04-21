SELECT checkins.id,checked_in_at,students.id,first_name,last_name,date_of_birth,gender,town_of_birth                                            
from students 
inner join checkins                                                   
 on students.id = checkins.student_id;