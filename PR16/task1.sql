-- Зависимая таблица
CREATE TABLE StudentPasses1 (
    PassID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    StudentID INT REFERENCES Students(StudentID),
    Reason TEXT
);

-- Вставка в главную таблицу
INSERT INTO Students (FirstName, LastName, BirthDate)
VALUES ('Иван', 'Иванов', '2004-03-15');

-- Вставка в зависимую таблицу
INSERT INTO StudentPasses1 (StudentID, Reason)
VALUES (5, 'Болезнь');

-- Попытка удалить запись из главной таблицы
-- Это вызовет ОШИБКУ: зависимая запись существует
DELETE FROM Students WHERE StudentID = 5;

-- Удаление зависимой таблицы
DROP TABLE StudentPasses1;