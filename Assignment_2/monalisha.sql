SQL> CREATE TABLE Department (
  2  department_id INT PRIMARY KEY,
  3  department_name VARCHAR(50) NOT NULL,
  4  office_location VARCHAR(50)
  5  );

Table created.

SQL> CREATE TABLE Faculty (
  2  faculty_id INT PRIMARY KEY,
  3  name VARCHAR(50),
  4  designation VARCHAR(50),
  5  email VARCHAR(50),
  6  department_id INT,
  7  FOREIGN KEY (department_id)
  8  REFERENCES Department(department_id)
  9  );

Table created.

SQL> CREATE TABLE Course (
  2  course_id INT PRIMARY KEY,
  3  course_name VARCHAR(50),
  4  credits INT,
  5  department_id INT,
  6  faculty_id INT,
  7  FOREIGN KEY (department_id)
  8  REFERENCES Department (department_id),
  9  FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
 10  );

Table created.

SQL> CREATE TABLE Student(
  2  student_id INT PRIMARY KEY,
  3  name VARCHAR(50),
  4  date_of_birth DATE,
  5  gender VARCHAR(10),
  6  contact_number VARCHAR(15),
  7  department_id INT,
  8  FOREIGN KEY (department_id)
  9  REFERENCES Department (department_id)
 10  );

Table created.

SQL> CREATE TABLE Enrollment(
  2  enrollment_id INT PRIMARY KEY,
  3  student_id INT,
  4  course_id INT,
  5  semester VARCHAR(20),
  6  grade VARCHAR(5),
  7  FOREIGN KEY (student_id)REferences Student(student_id),
  8  FOREIGN KEY (course_id) REFERENCES Course(course_id)
  9  );

Table created.

SQL>