-- Таблица "Students" — информация о студентах
CREATE TABLE Students (
    StudentID INT GENERATED ALWAYS AS IDENTITY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    BirthDate DATE NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    EnrollmentYear INT CHECK (EnrollmentYear >= 2000 AND EnrollmentYear <= EXTRACT(YEAR FROM CURRENT_DATE)),
    Status VARCHAR(20) DEFAULT 'Активен',
    CONSTRAINT PK_Students PRIMARY KEY (StudentID),
    CONSTRAINT UQ_Student_Email UNIQUE (Email),
    CONSTRAINT UQ_Student_Phone UNIQUE (Phone)
);

-- Таблица "Groups" — информация о группах
CREATE TABLE Groups (
    GroupID INT GENERATED ALWAYS AS IDENTITY,
    GroupName VARCHAR(20) NOT NULL,
    Specialization VARCHAR(50) NOT NULL,
    YearStart INT CHECK (YearStart >= 2000 AND YearStart <= EXTRACT(YEAR FROM CURRENT_DATE)),
    MaxStudents INT CHECK (MaxStudents > 0 AND MaxStudents <= 40),
    Curator VARCHAR(100),
    CONSTRAINT PK_Groups PRIMARY KEY (GroupID),
    CONSTRAINT UQ_GroupName UNIQUE (GroupName)
);
