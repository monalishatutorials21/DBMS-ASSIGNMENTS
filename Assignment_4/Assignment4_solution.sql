SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 100;
SQL> COLUMN Roll_No FORMAT 1000;
SP2-0246: Illegal FORMAT string "1000"
SQL> COLUMN Roll_No FORMAT 999;
SQL> COLUMN Student_Name FORMAT A25;
SQL> COLUMN Gender FORMAT A10;
SQL> COLUMN Date_of_Birth FORMAT A12;
SQL> COLUMN Dept_ID FORMAT 999;

SQL> SELECT StudentID AS Roll_No,
  2         Name AS Student_Name,
  3         Gender,
  4         DateOfBirth AS Date_of_Birth,
  5         DepartmentID AS Dept_ID
  6  FROM Student;

ROLL_NO STUDENT_NAME              GENDER     DATE_OF_BIRT DEPT_ID
------- ------------------------- ---------- ------------ -------
    401 Jyoti Kumari              F          04-JAN-06        101
    402 Monalisha                 F          20-AUG-03        101
    403 Nidhi Kumari              F          15-JAN-04        102
    404 Mili                      F          10-NOV-03        102
    405 Neha Kumari               F          18-JUL-03        102
    406 Suman Kumar               M          22-MAR-04        103
    407 Anjali Kumari             F          05-SEP-03        103
    408 Ravi Kumar                M          30-DEC-03        104
    409 Rahul Ranjan              M          14-FEB-04        104
    410 Priya Kumari              F          25-JUN-03        105

10 rows selected.

SQL> SELECT StudentID AS Roll_No,
  2         Name AS Student_Name,
  3         DepartmentID AS Dept_ID
  4  FROM Student;

ROLL_NO STUDENT_NAME              DEPT_ID
------- ------------------------- -------
    401 Jyoti Kumari                  101
    402 Monalisha                     101
    403 Nidhi Kumari                  102
    404 Mili                          102
    405 Neha Kumari                   102
    406 Suman Kumar                   103
    407 Anjali Kumari                 103
    408 Ravi Kumar                    104
    409 Rahul Ranjan                  104
    410 Priya Kumari                  105

10 rows selected.

SQL> SELECT FacultyID AS Faculty_ID,
  2         Name AS Faculty_Name,
  3         Designation AS Job_Title,
  4         Email AS Email_Address,
  5         DepartmentID AS Dept_ID
  6  FROM Faculty;

FACULTY_ID FACULTY_NAME                                       JOB_TITLE         EMAIL_ADDRESS                                       DEPT_ID
---------- -------------------------------------------------- ------------------------------ -------------------------------------------------- -------
       201 Prof. M. P. Singh                                  Professor         singhmurlidhar@gmail.com                                101
       202 Prof. E. Haque                                     Professor         haque@gmail.com                                         101
       203 Dr. Prity Kumari Choudhary                         Professor         pritychoudhary@gmail.com                                102
       204 Prof. Sujit Kumar                                  Professor         sujitkumar@gmail.com                                    102
       205 Prof. Md. Hafeezullah                              Professor         hafeezullahbpmce@gmail.com                      103
       206 Md. Izhar                                          Professor         mdizhar@gmail.com                                       103
       207 Manisha Kumari                                     Professor         manisha@bpmce.ac.in                             104
       208 Dr. Mishra                                         Professor         rmishra@bpmce.ac.in                             104
       209 Amit Kumar                                         Professor         amit@bpmce.ac.in                                        105
       210 Arun Kumar                                         Professor         arunkumar@bpmce.ac.in                                   105

10 rows selected.

SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 100;
SQL> COLUMN Faculty_ID FORMAT 999;
SQL> COLUMN Faculty_Name FORMAT A30;
SQL> COLUMN Job_Title FORMAT A25;
SQL> COLUMN Email_Address FORMAT A35;
SQL> COLUMN Dept_ID FORMAT 999;
SQL>
SQL> SELECT FacultyID AS Faculty_ID,
  2         Name AS Faculty_Name,
  3         Designation AS Job_Title,
  4         Email AS Email_Address,
  5         DepartmentID AS Dept_ID
  6  FROM Faculty;

FACULTY_ID FACULTY_NAME                   JOB_TITLE                 EMAIL_ADDRESS                   DEPT_ID
---------- ------------------------------ ------------------------- ----------------------------------- -------
       201 Prof. M. P. Singh              Professor                 singhmurlidhar@gmail.com                    101
       202 Prof. E. Haque                 Professor                 haque@gmail.com                     101
       203 Dr. Prity Kumari Choudhary     Professor                 pritychoudhary@gmail.com                    102
       204 Prof. Sujit Kumar              Professor                 sujitkumar@gmail.com                102
       205 Prof. Md. Hafeezullah          Professor                 hafeezullahbpmce@gmail.com                  103
       206 Md. Izhar                      Professor                 mdizhar@gmail.com                           103
       207 Manisha Kumari                 Professor                 manisha@bpmce.ac.in                 104
       208 Dr. Mishra                     Professor                 rmishra@bpmce.ac.in                 104
       209 Amit Kumar                     Professor                 amit@bpmce.ac.in                            105
       210 Arun Kumar                     Professor                 arunkumar@bpmce.ac.in               105

10 rows selected.

SQL> SELECT CourseID AS Course_ID,
  2         CourseName AS Course_Title,
  3         Credits AS Credit_Hours,
  4         DepartmentID AS Dept_ID,
  5         FacultyID AS Instructor_ID
  6  FROM Course;

 COURSE_ID COURSE_TITLE                                       CREDIT_HOURS DEPT_ID INSTRUCTOR_ID
---------- -------------------------------------------------- ------------ ------- -------------
       301 Data Structures                                               4     101       201
       302 Database Management Systems                                   4     101       202
       303 Operating Systems                                             4     101       201
       304 Computer Networks                                             3     101       202
       305 Introduction to Artificial Intelligence                       4     102       203
       306 Machine Learning                                              4     102       203
       307 Python for Data Science                                       3     102       204
       308 Electrical Machines                                           4     103       204
       309 Thermodynamics                                                4     104       205
       310 Engineering Mechanics                                         3     105       205

10 rows selected.

SQL> SELECT EnrollmentID AS Enroll_ID,
  2         StudentID AS Roll_No,
  3         CourseID AS Course_ID,
  4         Semester AS Semester_Name,
  5         Grade AS Final_Grade
  6  FROM Enrollment;

 ENROLL_ID ROLL_NO  COURSE_ID SEMESTER_N FINAL
---------- ------- ---------- ---------- -----
       501     401        301 Sem IV     A
       502     402        302 Sem IV     B+
       503     403        305 Sem III    A
       504     403        306 Sem III    A-
       505     404        307 Sem II     B+
       506     405        305 Sem II     A
       507     406        308 Sem IV     B
       508     408        309 Sem III    B+
       509     409        309 Sem IV     A-
       510     410        310 Sem II     A

10 rows selected.

SQL> SELECT *FROM Student
  2  WHERE DepartmentID=101;

 STUDENTID NAME                                               DATEOFBIR GENDER         CONTACTNUMBER   DEPARTMENTID
---------- -------------------------------------------------- --------- ---------- --------------- ------------
       401 Jyoti Kumari                                       04-JAN-06 F     9123456781                101
       402 Monalisha                                          20-AUG-03 F     9123456782                101

SQL> SELECT *FROM Student
  2  WHERE Gender ='F';

 STUDENTID NAME                                               DATEOFBIR GENDER         CONTACTNUMBER   DEPARTMENTID
---------- -------------------------------------------------- --------- ---------- --------------- ------------
       401 Jyoti Kumari                                       04-JAN-06 F     9123456781                101
       402 Monalisha                                          20-AUG-03 F     9123456782                101
       403 Nidhi Kumari                                       15-JAN-04 F     9123456783                102
       404 Mili                                               10-NOV-03 F     9123456784                102
       405 Neha Kumari                                        18-JUL-03 F     9123456785                102
       407 Anjali Kumari                                      05-SEP-03 F     9123456787                103
       410 Priya Kumari                                       25-JUN-03 F     9123456790                105

7 rows selected.


SQL> SELECT * FROM Faculty
  2  WHERE Designation = 'Assistant Professor';

no rows selected

SQL> SELECT *FROM Faculty
  2  WHERE DepartmentID=102;

 FACULTYID NAME                                               DESIGNATION       EMAIL                                               DEPARTMENTID
---------- -------------------------------------------------- ------------------------------ -------------------------------------------------- ------------
       203 Dr. Prity Kumari Choudhary                         Professor         pritychoudhary@gmail.com                                     102
       204 Prof. Sujit Kumar                                  Professor         sujitkumar@gmail.com                                         102



SQL> SELECT *FROM Course
  2  WHERE Credits>=4;

  COURSEID COURSENAME                                            CREDITS DEPARTMENTID  FACULTYID
---------- -------------------------------------------------- ---------- ------------ ----------
       301 Data Structures                                             4     101         201
       302 Database Management Systems                                 4     101         202
       303 Operating Systems                                           4     101         201
       305 Introduction to Artificial Intelligence                     4     102         203
       306 Machine Learning                                            4     102         203
       308 Electrical Machines                                         4     103         204
       309 Thermodynamics                                              4     104         205

7 rows selected.



SQL> SELECT * FROM Student
  2  WHERE DateOfBirth > DATE '2003-01-01';

 STUDENTID NAME                                               DATEOFBIR GENDER         CONTACTNUMBER   DEPARTMENTID
---------- -------------------------------------------------- --------- ---------- --------------- ------------
       401 Jyoti Kumari                                       04-JAN-06 F     9123456781                101
       402 Monalisha                                          20-AUG-03 F     9123456782                101
       403 Nidhi Kumari                                       15-JAN-04 F     9123456783                102
       404 Mili                                               10-NOV-03 F     9123456784                102
       405 Neha Kumari                                        18-JUL-03 F     9123456785                102
       406 Suman Kumar                                        22-MAR-04 M     9123456786                103
       407 Anjali Kumari                                      05-SEP-03 F     9123456787                103
       408 Ravi Kumar                                         30-DEC-03 M     9123456788                104
       409 Rahul Ranjan                                       14-FEB-04 M     9123456789                104
       410 Priya Kumari                                       25-JUN-03 F     9123456790                105

10 rows selected.

SQL> SELECT * FROM Enrollment
  2  WHERE Semester = 'Sem IV';

ENROLLMENTID  STUDENTID   COURSEID SEMESTER   GRADE
------------ ---------- ---------- ---------- -----
         501        401        301 Sem IV     A
         502        402        302 Sem IV     B+
         507        406        308 Sem IV     B
         509        409        309 Sem IV     A-

SQL> SELECT *FROM Student
  2  ORDER BY DateOfBirth DESC;

 STUDENTID NAME                                               DATEOFBIR GENDER         CONTACTNUMBER   DEPARTMENTID
---------- -------------------------------------------------- --------- ---------- --------------- ------------
       401 Jyoti Kumari                                       04-JAN-06 F     9123456781                101
       406 Suman Kumar                                        22-MAR-04 M     9123456786                103
       409 Rahul Ranjan                                       14-FEB-04 M     9123456789                104
       403 Nidhi Kumari                                       15-JAN-04 F     9123456783                102
       408 Ravi Kumar                                         30-DEC-03 M     9123456788                104
       404 Mili                                               10-NOV-03 F     9123456784                102
       407 Anjali Kumari                                      05-SEP-03 F     9123456787                103
       402 Monalisha                                          20-AUG-03 F     9123456782                101
       405 Neha Kumari                                        18-JUL-03 F     9123456785                102
       410 Priya Kumari                                       25-JUN-03 F     9123456790                105

10 rows selected.

SQL> SELECT*FROM Course
  2  ORDER BY Credits DESC;

  COURSEID COURSENAME                                            CREDITS DEPARTMENTID  FACULTYID
---------- -------------------------------------------------- ---------- ------------ ----------
       301 Data Structures                                             4     101         201
       302 Database Management Systems                                 4     101         202
       303 Operating Systems                                           4     101         201
       305 Introduction to Artificial Intelligence                     4     102         203
       309 Thermodynamics                                              4     104         205
       308 Electrical Machines                                         4     103         204
       306 Machine Learning                                            4     102         203
       307 Python for Data Science                                     3     102         204
       310 Engineering Mechanics                                       3     105         205
       304 Computer Networks                                           3     101         202

10 rows selected.

SQL> SELECT*FROM Student
  2  FETCH FIRST 3 ROWS ONLY;

 STUDENTID NAME                                               DATEOFBIR GENDER         CONTACTNUMBER   DEPARTMENTID
---------- -------------------------------------------------- --------- ---------- --------------- ------------
       401 Jyoti Kumari                                       04-JAN-06 F     9123456781                101
       402 Monalisha                                          20-AUG-03 F     9123456782                101
       403 Nidhi Kumari                                       15-JAN-04 F     9123456783                102

SQL> SELECT *FROM Course
  2  FETCH FIRST 5 ROWS ONLY;

  COURSEID COURSENAME                                            CREDITS DEPARTMENTID  FACULTYID
---------- -------------------------------------------------- ---------- ------------ ----------
       301 Data Structures                                             4     101         201
       302 Database Management Systems                                 4     101         202
       303 Operating Systems                                           4     101         201
       304 Computer Networks                                           3     101         202
       305 Introduction to Artificial Intelligence                     4     102         203

SQL> SELECT Name,
  2         FLOOR(MONTHS_BETWEEN(SYSDATE,DateOFBirth)/12)As Age
  3  FROM Student;

NAME                                                      AGE
-------------------------------------------------- ----------
Jyoti Kumari                                               20
Monalisha                                                  22
Nidhi Kumari                                               22
Mili                                                       22
Neha Kumari                                                22
Suman Kumar                                                21
Anjali Kumari                                              22
Ravi Kumar                                                 22
Rahul Ranjan                                               21
Priya Kumari                                               22

10 rows selected.

SQL> SELECT CourseName,
  2         Credits+1 As Updated_Credits
  3  FROM Course;

COURSENAME                                         UPDATED_CREDITS
-------------------------------------------------- ---------------
Data Structures                                                  5
Database Management Systems                                      5
Operating Systems                                                5
Computer Networks                                                4
Introduction to Artificial Intelligence                          5
Machine Learning                                                 5
Python for Data Science                                          4
Electrical Machines                                              5
Thermodynamics                                                   5
Engineering Mechanics                                            4

10 rows selected.



SQL> SELECT EnrollmentID,
  2         StudentID,
  3         CourseID,
  4         Semester,
  5         Grade AS Final_Grade
  6  FROM Enrollment;

ENROLLMENTID  STUDENTID   COURSEID SEMESTER   FINAL
------------ ---------- ---------- ---------- -----
         501        401        301 Sem IV     A
         502        402        302 Sem IV     B+
         503        403        305 Sem III    A
         504        403        306 Sem III    A-
         505        404        307 Sem II     B+
         506        405        305 Sem II     A
         507        406        308 Sem IV     B
         508        408        309 Sem III    B+
         509        409        309 Sem IV     A-
         510        410        310 Sem II     A

10 rows selected.

SQL> SELECT Name,
  2         EXTRACT(YEAR FROM DateOfBirth) AS Birth_Year
  3  FROM Student;

NAME                                               BIRTH_YEAR
-------------------------------------------------- ----------
Jyoti Kumari                                             2006
Monalisha                                                2003
Nidhi Kumari                                             2004
Mili                                                     2003
Neha Kumari                                              2003
Suman Kumar                                              2004
Anjali Kumari                                            2003
Ravi Kumar                                               2003
Rahul Ranjan                                             2004
Priya Kumari                                             2003

10 rows selected.

SQL> SELECT Name,
  2         SUBSTR(Email, INSTR(Email, '@')+1) AS Email_Domain
  3  FROM Faculty;

NAME
--------------------------------------------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Prof. M. P. Singh
gmail.com

Prof. E. Haque
gmail.com

Dr. Prity Kumari Choudhary
gmail.com

Prof. Sujit Kumar
gmail.com

Prof. Md. Hafeezullah
gmail.com

Md. Izhar
gmail.com

Manisha Kumari
bpmce.ac.in

Dr. Mishra
bpmce.ac.in

Amit Kumar
bpmce.ac.in

Arun Kumar
bpmce.ac.in


10 rows selected.

SQL>
