UPDATE students SET date_of_birth = date_of_birth + interval
'100 year' WHERE date_of_birth <='1900-01-01';