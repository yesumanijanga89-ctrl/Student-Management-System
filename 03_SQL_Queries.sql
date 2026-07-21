SELECT * FROM Students;

SELECT * FROM Subjects;

SELECT * FROM Marks;

SELECT Student_Name,Course
FROM Students;

SELECT *
FROM Students
WHERE Age > 20;

SELECT s.Student_Name,sub.Subject_Name,m.Marks
FROM Marks m
JOIN Students s
ON m.Student_ID=s.Student_ID
JOIN Subjects sub
ON m.Subject_ID=sub.Subject_ID;

SELECT AVG(Marks) AS Average_Marks
FROM Marks;

SELECT MAX(Marks) AS Highest_Marks
FROM Marks;

SELECT Student_ID,SUM(Marks) AS Total_Marks
FROM Marks
GROUP BY Student_ID;

CREATE VIEW Student_Report AS
SELECT s.Student_Name,sub.Subject_Name,m.Marks
FROM Marks m
JOIN Students s
ON m.Student_ID=s.Student_ID
JOIN Subjects sub
ON m.Subject_ID=sub.Subject_ID;
