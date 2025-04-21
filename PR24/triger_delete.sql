CREATE OR REPLACE FUNCTION log_student_delete() 
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO student_log (action_type, student_id, lastname, firstname, birthdate)
    VALUES ('DELETE', OLD.studentid, OLD.lastname, OLD.firstname, OLD.birthdate);
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER student_delete_trigger
AFTER DELETE ON students
FOR EACH ROW
EXECUTE FUNCTION log_student_delete();
