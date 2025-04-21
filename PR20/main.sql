DO $$
DECLARE
    i INT := 10;
BEGIN
    WHILE i <= 20 LOOP
        RAISE NOTICE 'Квадрат % = %', i, i * i;
        i := i + 1;
    END LOOP;
END $$;
