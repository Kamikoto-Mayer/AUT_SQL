CREATE TABLE StudentPasses4 (
    PassID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    StudentID INT REFERENCES Students(StudentID) ON DELETE SET NULL,
    Reason TEXT
);

-- Вставка
INSERT INTO Students (FirstName, LastName, BirthDate) VALUES ('Анна', 'Антонова', '2004-03-13');
INSERT INTO StudentPasses4 (StudentID, Reason) VALUES (10, 'Прогул');

-- Удаление главной записи — внешний ключ станет NULL
DELETE FROM Students WHERE StudentID = 10;

DROP TABLE StudentPasses4;
