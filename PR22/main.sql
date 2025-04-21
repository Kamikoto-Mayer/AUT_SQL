CREATE OR REPLACE PROCEDURE GetStudentList()
LANGUAGE plpgsql
AS $$
DECLARE
    student_record RECORD;
BEGIN
    FOR student_record IN
        SELECT lastname, firstname, birthdate
        FROM students
    LOOP
        -- Выводим фамилию, инициалы и год рождения для каждого студента
        RAISE NOTICE '% %, %', student_record.lastname, 
            LEFT(student_record.firstname, 1), 
            EXTRACT(YEAR FROM student_record.birthdate);
    END LOOP;
END;
$$;

-- Вызываем процедуру
CALL GetStudentList();