UPDATE students
SET lastname = lastname || ' (выпускник)'
WHERE birthdate < '2004-01-01';
