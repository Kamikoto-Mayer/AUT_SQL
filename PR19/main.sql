DO $$
DECLARE
    student RECORD;
    year_of_birth INT;
    age INT;
BEGIN
    FOR student IN
        SELECT firstname, lastname, birthdate FROM students
    LOOP
        year_of_birth := EXTRACT(YEAR FROM student.birthdate);
        age := DATE_PART('year', CURRENT_DATE) - year_of_birth;

        IF age < 18 THEN
            RAISE NOTICE '% %, % — Молодой студент',
                student.lastname,
                LEFT(student.firstname, 1) || '.',
                year_of_birth;
        ELSE
            RAISE NOTICE '% %, %',
                student.lastname,
                LEFT(student.firstname, 1) || '.',
                year_of_birth;
        END IF;
    END LOOP;
END $$;
