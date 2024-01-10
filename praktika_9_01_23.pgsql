-- Создаем таблицу для преподавателей
CREATE TABLE Professors (
    Professor_ID SERIAL PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    MiddleName VARCHAR(255)
);

-- Создаем таблицу для групп
CREATE TABLE Groups (
    GroupID SERIAL PRIMARY KEY,
    GroupName VARCHAR(255),
    Professor_ID INT REFERENCES Professors(Professor_ID)
);

-- Создаем таблицу для студентов
CREATE TABLE Students (
    Student_ID SERIAL PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Group_ID INT REFERENCES Groups(GroupID)
);
