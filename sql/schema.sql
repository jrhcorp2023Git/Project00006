-- schema.sql for Project 00006

-- Drop tables if they exist (clean slate)
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Projects;
DROP TABLE IF EXISTS Employee_Project_Assignments;

CREATE TABLE Departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL    
);

CREATE TABLE Employees (
    employee_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	department_id INTEGER,
	hire_date DATE,
    salary REAL NOT NULL,
	FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Projects (
    project_id INTEGER PRIMARY KEY,
	project_name TEXT NOT NULL,
    start_date DATE,
	end_date DATE,
	department_id INTEGER,
	FOREIGN KEY (department_id) REFERENCES Departments(department_id)
    
);

CREATE TABLE Employee_Project_Assignments (
    employee_id INTEGER,
	project_id INTEGER,
	role TEXT,
	PRIMARY KEY (employee_id, project_id),
	FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);