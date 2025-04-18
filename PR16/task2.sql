CREATE TABLE StudentPasses2 (
    PassID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    StudentID INT REFERENCES Students(StudentID) ON DELETE CASCADE,
    Reason TEXT
);

-- Вставка
INSERT INTO Students (FirstName, LastName, BirthDate) VALUES ('Петр', 'Петров', '2004-03-13');
INSERT INTO StudentPasses2 (StudentID, Reason) VALUES (7, 'По семейным обстоятельствам');

-- -- Удаление главной записи (зависимая удалится автоматически)
DELETE FROM Students WHERE StudentID = 7;

DROP TABLE StudentPasses2;
