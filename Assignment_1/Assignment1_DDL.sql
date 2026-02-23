

/* Q3: Create Student table */
CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Age INT,
    Phone VARCHAR(15)
);

/* Q4: Create Course table */
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT
);

/* Q5: Add City column */
ALTER TABLE Student
ADD City VARCHAR(25);

/* Q6: Add Semester column */
ALTER TABLE Student
ADD Semester INT;

/* Q7: Rename Phone to MobileNo */
ALTER TABLE Student
CHANGE Phone MobileNo VARCHAR(15);

/* Q8: Drop Course table */
DROP TABLE Course;


/* ================================
   PART B : DML
   ================================ */

/* Q9: Insert 5 records */
INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester) VALUES
(101, 'Aarav', 'CSE', 19, '9000011111', 'Delhi', 2),
(102, 'Simran', 'IT', 21, '9000022222', 'Jaipur', 4),
(103, 'Kunal', 'CSE', 22, '9000033333', 'Patna', 5),
(104, 'Riya', 'ECE', 20, '9000044444', 'Kolkata', 3),
(105, 'Mohit', 'ME', 23, '9000055555', 'Indore', 6);

/* Q10: Display all records */
SELECT * FROM Student;

/* Q11: Display RollNo and Name */
SELECT RollNo, Name
FROM Student;

/* Q12: Students from CSE department */
SELECT *
FROM Student
WHERE Dept = 'CSE';

/* Q13: Students with age greater than 20 */
SELECT *
FROM Student
WHERE Age > 20;

/* Q14: Update Dept of RollNo 101 to ECE */
UPDATE Student
SET Dept = 'ECE'
WHERE RollNo = 101;

/* Q15: Update City of student 'Aarav' to Patna */
UPDATE Student
SET City = 'Patna'
WHERE Name = 'Aarav';

/* Q16: Increase age of all students by 1 */
UPDATE Student
SET Age = Age + 1;

/* Q17: Delete student with RollNo 105 */
DELETE FROM Student
WHERE RollNo = 105;

/* Q18: Delete all records but keep table */
DELETE FROM Student;