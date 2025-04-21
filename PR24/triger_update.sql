CREATE OR REPLACE FUNCTION log_student_update() 
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO student_log (action_type, student_id, lastname, firstname, birthdate)
    VALUES ('UPDATE', NEW.studentid, NEW.lastname, NEW.firstname, NEW.birthdate);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER student_update_trigger
AFTER UPDATE ON students
FOR EACH ROW
EXECUTE FUNCTION log_student_update();
