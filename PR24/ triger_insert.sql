CREATE OR REPLACE FUNCTION log_student_insert() 
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO student_log (action_type, student_id, lastname, firstname, birthdate)
    VALUES ('INSERT', NEW.studentid, NEW.lastname, NEW.firstname, NEW.birthdate);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER student_insert_trigger
AFTER INSERT ON students
FOR EACH ROW
EXECUTE FUNCTION log_student_insert();
