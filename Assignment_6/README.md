# 📊 DB-Lab-6: Data Aggregation using GROUP BY and HAVING

![Oracle](https://img.shields.io/badge/Database-Oracle%2021c-red)
![SQL](https://img.shields.io/badge/Language-SQL-blue)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## 🎯 Objective

To understand and implement SQL aggregate functions along with **GROUP BY** and **HAVING** clauses for summarizing and analyzing relational data without modifying stored data.

---

## 🛠️ Tools & Technologies

* Oracle 21c Express Edition
* SQL*Plus / VS Code
* SQL Language
---

## 📂 Database Schema

The lab uses the following tables:

* **Student**
* **Faculty**
* **Course**
* **Department**
* **Enrollment**

These tables are related using foreign keys to simulate a **college management system**.

---

## 📌 Concepts Covered

* Aggregate Functions (`COUNT`, `SUM`, `AVG`, `MAX`, `MIN`)
* GROUP BY clause
* HAVING clause
* GROUP BY with multiple columns
* Aggregation with JOIN operations

---

## 🧪 Lab Questions Overview

### 🔹 Part A: Basic Aggregate Queries

* Total number of students, faculty, courses
* Maximum and minimum credits

### 🔹 Part B: GROUP BY on Single Tables

* Grouping students, faculty, courses by department
* Enrollment analysis by semester and grade

### 🔹 Part C: GROUP BY with HAVING

* Filtering grouped results using conditions

### 🔹 Part D: Aggregation with JOIN

* Combining multiple tables for meaningful insights

### 🔹 Part E: Analytical Queries

* Advanced queries like maximum grade per course
* Course and department analysis

---

## ▶️ How to Run

1. Open **VS Code** or **SQL*Plus**
2. Create a file:

   ```bash
   lab6.sql
   ```
3. Paste the SQL script
4. Run the file using:

   ```sql
   @lab6.sql
   ```

---

## 📊 Sample Query

```sql
SELECT Department_ID, COUNT(*) AS Total_Students
FROM Student
GROUP BY Department_ID;
```

---

## 📈 Output

The output will display:

* Grouped data summaries
* Counts of students, courses, and faculty
* Filtered results using HAVING clause

---

## 🎓 Learning Outcome

After completing this lab, you will be able to:

* Perform data aggregation using SQL
* Analyze grouped data efficiently
* Use HAVING for filtering aggregated results
* Combine tables using JOIN with GROUP BY




