CREATE TABLE Students(
Student_ID INT PRIMARY KEY,
Student_Name VARCHAR(100),
Gender VARCHAR(10),
Age INT,
Course VARCHAR(50)
);

CREATE TABLE Subjects(
Subject_ID INT PRIMARY KEY,
Subject_Name VARCHAR(100)
);

CREATE TABLE Marks(
Mark_ID INT PRIMARY KEY,
Student_ID INT,
Subject_ID INT,
Marks INT,
FOREIGN KEY(Student_ID) REFERENCES Students(Student_ID),
FOREIGN KEY(Subject_ID) REFERENCES Subjects(Subject_ID)
);
