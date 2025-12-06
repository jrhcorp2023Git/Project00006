# Project00006

## 📖 Overview
The goal of Project00006 is to showcase reproducible, professional SQL practices:
clean schema design, realistic sample data, validation scripts, and clear documentation.
---

## ⚡ Quick Start
1. Clone the repo:
   ```bash
   git clone https://github.com/jrhcorp2023Git/Project00006.git
   cd Project00006
   ```
2. Build the database:
   ```bash
	sqlite3 project00006.db < sql/schema.sql
	sqlite3 project00006.db < sql/inserts.sql
   ```
3. Run queries:
   ```bash
	sqlite3 project00006.db < sql/queries.sql
   ```
4. Run tests
   ```bash
	sqlite3 project00006.db < sql/test.sql
   ```

---

🚀 Getting Started
Prerequisites
- SQLite 3.0+ installed
- Git for cloning the repository
- Command line access (Windows PowerShell, macOS Terminal, or Linux shell)
Setup Instructions
Step‑by‑step instructions for building and running the project.
Run the schema and inserts files to build the database, then execute queries and tests to confirm outputs.

---

📊 Query Outputs
Query 1 – Employees with Departments

employee_id | first_name | last_name | department_name
------------+------------+-----------+----------------
101         | Alice      | Johnson   | Engineering
102         | Bob        | Smith     | Engineering
103         | Carol      | Davis     | Human Resources
104         | David      | Miller    | Finance
105         | Eve        | Wilson    | Marketing

Query 2 – Projects with Assigned Employees and Roles

project_name       | employee_name   | role
-------------------+-----------------+--------------------
Cloud Migration    | Alice Johnson   | Lead Developer
Cloud Migration    | Bob Smith       | DevOps Engineer
Payroll Automation | Carol Davis     | HR Analyst
Payroll Automation | David Miller    | Financial Analyst
Website Redesign   | Eve Wilson      | Marketing Specialist

Query 3 – Department Salary Totals

department_name   | total_salary
------------------+-------------
Engineering       | 180000.0
Finance           | 72000.0
Human Resources   | 60000.0
Marketing         | 65000.0

Test Results (from test.sql) 

Departments
Employees
Projects
Employee_Project_Assignments
4
5
3
5
Engineering|180000.0
Finance|72000.0
Human Resources|60000.0
Marketing|65000.0

---

Roadmap
- [ ] Add ERD diagram  ![ERD Diagram](docs/project00006-diagram.png)
- [ ] Expand queries for advanced reporting  
- [ ] Automate test scripts further    

---
Reinforcement Quiz (aligned to Project00006)
1. 	Which SQL clause ensures that salary totals are calculated per department in Query 3?
A. 	WHERE
B. 	GROUP BY
C. 	ORDER BY
D. 	JOIN

2. 	In Query 2, why do we join through the  table?
A. 	To connect employees directly to departments
B. 	To handle the many‑to‑many relationship between employees and projects
C. 	To calculate salaries per project
D. 	To exclude employees without projects

3. 	What does the expression  represent in Query 2?
A. 	The employee’s department ID
B. 	The concatenated full name of the employee
C. 	The total salary of the employee
D. 	The role assigned to the employee

---

License
MIT License

---

This shell gives you **structure without confusion**: Overview → Quick Start → Getting Started → Outputs → Tests → Roadmap → License. Tomorrow, once you’ve coded and run the queries, we’ll fill in the outputs and make it recruiter‑ready.













