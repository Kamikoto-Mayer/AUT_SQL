-- 3
ALTER TABLE studentpasses1
ADD CONSTRAINT chk_passdays_positive CHECK (PassDays >= 0 AND PassDays <= 30);
