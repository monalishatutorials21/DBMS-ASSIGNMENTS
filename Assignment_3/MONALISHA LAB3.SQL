INSERT INTO Department VALUES (1, 'Computer Science and Engineering', 'Block A');

1 row created.

SQL> INSERT INTO Department VALUES (2, 'Mechanical Engineering', 'Block B');

1 row created.

SQL> INSERT INTO Department VALUES (3, 'Civil Engineering', 'Block C');

1 row created.

SQL> INSERT INTO Department VALUES (4, 'Electrical Engineering', 'Block D');

1 row created.

SQL> INSERT INTO Department VALUES (5, 'Electronics Engineering', 'Block E');

1 row created.

SQL> INSERT INTO Department VALUES (6, 'Information Technology', 'Block A');

1 row created.

SQL> INSERT INTO Department VALUES (7, 'Applied Science', 'Block F');

1 row created.

SQL> INSERT INTO Department VALUES (8, 'MBA', 'Block G');

1 row created.

SQL> INSERT INTO Department VALUES (9, 'Polytechnic', 'Block H');

1 row created.

SQL> INSERT INTO Department VALUES (10, 'Workshop', 'Block I');

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Department;

DEPARTMENT_ID DEPARTMENT_NAME
------------- --------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------
            1 Computer Science and Engineering
Block A

            2 Mechanical Engineering
Block B

            3 Civil Engineering
Block C


DEPARTMENT_ID DEPARTMENT_NAME
------------- --------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------
            4 Electrical Engineering
Block D

            5 Electronics Engineering
Block E

            6 Information Technology
Block A


DEPARTMENT_ID DEPARTMENT_NAME
------------- --------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------
            7 Applied Science
Block F

            8 MBA
Block G

            9 Polytechnic
Block H


DEPARTMENT_ID DEPARTMENT_NAME
------------- --------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------
           10 Workshop
Block I


10 rows selected.
2.INSERT INTO Faculty VALUES (1, 'MR. MURLIDHAR PRASAD SINGH', 'Professor', 'murlidharprasad233@gmail.com', 1);

1 row created.

SQL> INSERT INTO Faculty VALUES (2, 'MR. SUJEET SIR', 'Assistant Professor', 'sujeetkum2@gmail.com', 1);

1 row created.

SQL> INSERT INTO Faculty VALUES (3, 'MR.IZHAAR SIR', 'Associate Professor', 'izhaarsir56@gmail.com  ', 2);

1 row created.

SQL> INSERT INTO Faculty VALUES (4, 'Mr. JITENDRA SIR ', 'Assistant Professor', 'jitendrasir67@gmail.com  ', 3);

1 row created.

SQL> INSERT INTO Faculty VALUES (5, ' Dr. PRITY CHOUDHARY
', 'Professor', 'prity45@gmail.com ', 4);

1 row created.

SQL> INSERT INTO Faculty VALUES (6, 'Mr. N. Roy', 'Assistant Professor', 'nroy@bpmce.ac.in', 5);

1 row created.

SQL> INSERT INTO Faculty VALUES (7, 'Dr. A. Jha', 'Professor', 'ajha@bpmce.ac.in', 6);

1 row created.

SQL> INSERT INTO Faculty VALUES (8, 'Mr. V. Mishra', 'Lecturer', 'vmishra@bpmce.ac.in', 7);

1 row created.

SQL> INSERT INTO Faculty VALUES (9, 'Mrs. K. Gupta', 'Assistant Professor', 'kgupta@bpmce.ac.in', 8);

1 row created.

SQL> INSERT INTO Faculty VALUES (10, 'Mr. R. Das', 'Instructor', 'rdas@bpmce.ac.in', 9);

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Faculty;

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
         1 MR. MURLIDHAR PRASAD SINGH
Professor
murlidharprasad233@gmail.com                                            1

         2 MR. SUJEET SIR
Assistant Professor
sujeetkum2@gmail.com                                            1

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------

         3 MR.IZHAAR SIR
Associate Professor
izhaarsir56@gmail.com                                            2

         4 Mr. JITENDRA SIR 
Assistant Professor

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
jitendrasir67@gmail.com                                             3

         5 Dr. PRITY CHOUDHARY
Professor
prity45@gmail.com                                             4

         6 Mr. N. Roy

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
Assistant Professor
nroy@bpmce.ac.in                                               5

         7 Dr. A. Jha
Professor
ajha@bpmce.ac.in                                               6


FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
         8 Mr. V. Mishra
Lecturer
vmishra@bpmce.ac.in                                            7

         9 Mrs. K. Gupta
Assistant Professor
kgupta@bpmce.ac.in                                             8

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------

        10 Mr. R. Das
Instructor
rdas@bpmce.ac.in                                               9


10 rows selected.
3.INSERT INTO Course VALUES (1, 'DBMS', 4, 1, 1);

1 row created.

SQL> INSERT INTO Course VALUES (2, 'Operating System', 4, 1, 2);

1 row created.

SQL> INSERT INTO Course VALUES (3, 'Thermodynamics', 3, 2, 3);

1 row created.

SQL> INSERT INTO Course VALUES (4, 'Surveying', 3, 3, 4);

1 row created.

SQL> INSERT INTO Course VALUES (5, 'Power Systems', 4, 4, 5);

1 row created.

SQL> INSERT INTO Course VALUES (6, 'Analog Electronics', 3, 5, 6);

1 row created.

SQL> INSERT INTO Course VALUES (7, 'Web Technology', 3, 6, 7);

1 row created.

SQL> INSERT INTO Course VALUES (8, 'Engineering Physics', 4, 7, 8);

1 row created.

SQL> INSERT INTO Course VALUES (9, 'Management Principles', 3, 8, 9);

1 row created.

SQL> INSERT INTO Course VALUES (10, 'Workshop Practice', 2, 9, 10);

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Course;

 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
         1 DBMS                                                        4
            1          1

         2 Operating System                                            4
            1          2

         3 Thermodynamics                                              3
            2          3


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
         4 Surveying                                                   3
            3          4

         5 Power Systems                                               4
            4          5

         6 Analog Electronics                                          3
            5          6


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
         7 Web Technology                                              3
            6          7

         8 Engineering Physics                                         4
            7          8

         9 Management Principles                                       3
            8          9


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
        10 Workshop Practice                                           2
            9         10


10 rows selected.
4.INSERT INTO Student VALUES (1, 'MONALISHA',   DATE '2002-01-15', 'Female', '9000000001', 1);

1 row created.

SQL> INSERT INTO Student VALUES (2, 'MILLI',    DATE '2001-03-22', 'Female', '9000000002', 1);

1 row created.

SQL> INSERT INTO Student VALUES (3, 'JYOTI',   DATE '2002-05-10', 'Female', '9000000003', 2);

1 row created.

SQL> INSERT INTO Student VALUES (4, 'NIDHI',   DATE '2001-07-18', 'Female', '9000000004', 3);

1 row created.

SQL> INSERT INTO Student VALUES (5, 'PRIYA',    DATE '2002-09-05', 'Female', '9000000005', 4);

1 row created.

SQL> INSERT INTO Student VALUES (6, 'SAKSHI',  DATE '2001-11-27', 'Female', '9000000006', 5);

1 row created.

SQL> INSERT INTO Student VALUES (7, 'PRIYANKA',    DATE '2002-02-14', 'Female', '9000000007', 6);

1 row created.

SQL> INSERT INTO Student VALUES (8, 'MONIKA', DATE '2001-04-30', 'Female', '9000000008', 7);

1 row created.

SQL> INSERT INTO Student VALUES (9, 'MANISHA',    DATE '2002-06-19', 'Female', '9000000009', 8);

1 row created.

SQL> INSERT INTO Student VALUES (10,'SHAMBHAVI',   DATE '2001-08-08', 'Female', '9000000010', 9);

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Student;

STUDENT_ID NAME                                               DATE_OF_B
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- --------------- -------------
         1 MONALISHA                                            15-JAN-02
Female     9000000001                  1

         2 MILLI                                              22-MAR-01
Female     9000000002                  1

         3 JYOTI                                              10-MAY-02
Female     9000000003                  2


STUDENT_ID NAME                                               DATE_OF_B
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- --------------- -------------
         4 NIDHI                                             18-JUL-01
Female     9000000004                  3

         5 PRIYA                                             05-SEP-02
Female     9000000005                  4

         6 SAKSHI                                             27-NOV-01
Female     9000000006                  5


STUDENT_ID NAME                                               DATE_OF_B
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- --------------- -------------
         7 PRIYANKA                                               14-FEB-02
Female     9000000007                  6

         8 MONIKA                                           30-APR-01
Female     9000000008                  7

         9 MANISHA                                              19-JUN-02
Female     9000000009                  8


STUDENT_ID NAME                                               DATE_OF_B
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- --------------- -------------
        10 SHAMBHAVI                                              08-AUG-01
Female     9000000010                  9


10 rows selected.
5.INSERT INTO Enrollment VALUES (1, 1, 1, 4, 'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES (2, 2, 2, 6, 'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (3, 3, 3, 6, 'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES (4, 4, 4, 5, 'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (5, 5, 5, 3, 'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES (6, 6, 6, 2, 'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (7, 7, 7, 1, 'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES (8, 8, 8, 3, 'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (9, 9, 9, 2, 'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (10,10,10,1, 'B');

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Enrollment;

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER             GRADE
------------- ---------- ---------- -------------------- -----
            1          1          1 4                    B
            2          2          2 6                    A
            3          3          3 6                    B
            4          4          4 5                    A
            5          5          5 3                    B
            6          6          6 2                    A
            7          7          7 1                    B
            8          8          8 3                    A
            9          9          9 2                    A
           10         10         10 1                    B

10 rows selected.