-- Убедимся, что студент с ID = 1 существует
INSERT INTO Students (FirstName, LastName) VALUES ('Дефолт', 'Студент');

-- Зависимая таблица с DEFAULT = 1
CREATE TABLE StudentPasses5 (
    PassID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    StudentID INT DEFAULT 1 REFERENCES Students(StudentID) ON DELETE SET DEFAULT,
    Reason TEXT
);

-- Вставка нового студента
INSERT INTO Students (FirstName, LastName) VALUES ('Игорь', 'Игнатьев');

-- Вставка пропуска с сылкой на нового студента (ID = 6, например)
INSERT INTO StudentPasses5 (StudentID, Reason) VALUES (6, 'Уважительная причина');

-- Удаляем студента с ID = 6 — поле StudentID в таблице StudentPasses5 станет 1
DELETE FROM Students WHERE StudentID = 6;

DROP TABLE StudentPasses5;
