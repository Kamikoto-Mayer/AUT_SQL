-- 6
ALTER TABLE studentpasses1
ADD CONSTRAINT fk_passes_student
FOREIGN KEY (StudentID) REFERENCES students(StudentID);
