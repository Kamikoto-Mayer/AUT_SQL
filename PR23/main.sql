CREATE OR REPLACE PROCEDURE AddStudent(
    p_lastname VARCHAR(50), 
    p_firstname VARCHAR(50), 
    p_birthdate DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO students (lastname, firstname, birthdate)
    VALUES (p_lastname, p_firstname, p_birthdate);
END;
$$;
