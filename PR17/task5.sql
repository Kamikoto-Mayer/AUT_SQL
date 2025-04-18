-- 5
SELECT conname
FROM pg_constraint
WHERE conrelid = 'studentpasses1'::regclass AND contype = 'f';
