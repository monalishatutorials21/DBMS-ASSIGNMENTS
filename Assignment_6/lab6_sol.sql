SET LINESIZE 200
SET PAGESIZE 200;

-- ==============================
-- Part A: Basic Aggregate Queries
-- ==============================

-- Q1 Display the total number of students in the Student table
SELECT COUNT(*) AS Total_Students FROM Student;

-- Q2 Display the total number of faculty members in the Faculty table
SELECT COUNT(*) AS Total_Faculty FROM Faculty;

-- Q3 Display the total number of courses available in the Course table
SELECT COUNT(*) AS Total_Courses FROM Course;

-- Q4 Display the maximum credits among all courses
SELECT MAX(Credits) AS Maximum_Credits FROM Course;

-- Q5 Display the minimum credits offered by any course
SELECT MIN(Credits) AS Minimum_Credits FROM Course;

-- =====================================
-- Part B: GROUP BY on Single Tables
-- =====================================

-- Q6 Display the number of students in each DepartmentID from the Student table
SELECT Department_ID, COUNT(*) AS Number_of_Students
FROM Student
GROUP BY Department_ID;

-- Q7 Display the number of faculty members in each DepartmentID from the Faculty table
SELECT Department_ID, COUNT(*) AS Number_of_Faculty
FROM Faculty
GROUP BY Department_ID;

-- Q8 Display the number of courses offered by each DepartmentID from the Course table
SELECT Department_ID, COUNT(*) AS Number_of_Courses
FROM Course
GROUP BY Department_ID;

-- Q9 Display the number of enrollments in each Semester from the Enrollment table
SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester;

-- Q10 Display the number of students for each Grade in the Enrollment table
SELECT Grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY Grade;

-- =====================================
-- Part C: GROUP BY with HAVING
-- =====================================

-- Q11 Display departments having more than 3 students
SELECT Department_ID, COUNT(*) AS Total_Students
FROM Student
GROUP BY Department_ID
HAVING COUNT(*) > 3;

-- Q12 Display semesters where more than 2 enrollments exist
SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester
HAVING COUNT(*) > 2;

-- Q13 Display grades that are assigned to more than one student
SELECT Grade, COUNT(*) AS Total
FROM Enrollment
GROUP BY Grade
HAVING COUNT(*) > 1;

-- Q14 Display DepartmentIDs where more than one course is offered
SELECT Department_ID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY Department_ID
HAVING COUNT(*) > 1;

-- =====================================
-- Part D: Aggregation with JOIN
-- =====================================

-- Q15 Display the number of students enrolled in each CourseID
SELECT Course_ID, COUNT(Student_ID) AS Enrolled_Students
FROM Enrollment
GROUP BY Course_ID;

-- Q16 Display CourseName and number of students enrolled in that course
SELECT c.Course_Name, COUNT(e.Student_ID) AS Enrolled_Students
FROM Course c
JOIN Enrollment e ON c.Course_ID = e.Course_ID
GROUP BY c.Course_Name;

-- Q17 Display DepartmentID and number of students belonging to that department
SELECT d.Department_ID, COUNT(s.Student_ID) AS Total_Students
FROM Department d
JOIN Student s ON d.Department_ID = s.Department_ID
GROUP BY d.Department_ID;

-- Q18 Display Faculty Name and number of courses taught by each faculty member
SELECT f.Name, COUNT(c.Course_ID) AS Courses_Taught
FROM Faculty f
JOIN Course c ON f.Faculty_ID = c.Faculty_ID
GROUP BY f.Name;

-- =====================================
-- Part E: Analytical Queries
-- =====================================

-- Q19 Display CourseName and maximum grade obtained in that course
SELECT c.Course_Name, MAX(e.Grade) AS Highest_Grade
FROM Course c
JOIN Enrollment e ON c.Course_ID = e.Course_ID
GROUP BY c.Course_Name;

-- Q20 Display DepartmentID and total number of courses offered in that department
SELECT Department_ID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY Department_ID;

-- Q21 Display Semester and total number of students enrolled in that semester
SELECT Semester, COUNT(Student_ID) AS Total_Students
FROM Enrollment
GROUP BY Semester;

-- Q22 Display courses that have more than 2 students enrolled
SELECT Course_ID, COUNT(Student_ID) AS Total_Students
FROM Enrollment
GROUP BY Course_ID
HAVING COUNT(Student_ID) > 2;