-- CREATE TABLE StudentPasses3 (
--     PassID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--     StudentID INT REFERENCES Students(StudentID) ON DELETE NO ACTION,
--     Reason TEXT
-- );

-- Вставка
-- INSERT INTO Students (FirstName, LastName, BirthDate) VALUES ('Сергей', 'Сергеев', '2004-03-13');
-- INSERT INTO StudentPasses3 (StudentID, Reason) VALUES (9, 'Опоздание');

-- Удаление вызовет ОШИБКУ
-- DELETE FROM Students WHERE StudentID = 9;

DROP TABLE StudentPasses3;
