CREATE OR REPLACE FUNCTION soft_delete_student()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE students SET isdeleted = TRUE WHERE studentid = OLD.studentid;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_soft_delete_student
BEFORE DELETE ON students
FOR EACH ROW
EXECUTE FUNCTION soft_delete_student();
