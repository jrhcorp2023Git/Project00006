-- inserts.sql for Project00006

-- Departments
INSERT INTO departments (department_id, department_name) VALUES
(1, 'Engineering'),
(2, 'Human Resources'),
(3, 'Finance'),
(4, 'Marketing');

-- Employees
INSERT INTO employees (employee_id, first_name, last_name, department_id, hire_date, salary) VALUES
(101, 'Alice', 'Johnson', 1, '2020-03-15', 85000),
(102, 'Bob', 'Smith', 1, '2019-07-01', 95000),
(103, 'Carol', 'Davis', 2, '2021-01-20', 60000),
(104, 'David', 'Miller', 3, '2018-11-05', 72000),
(105, 'Eve', 'Wilson', 4, '2022-06-10', 65000);

-- Projects
INSERT INTO projects (project_id, project_name, start_date, end_date, department_id) VALUES
(201, 'Website Redesign', '2023-01-01', '2023-06-30', 4),
(202, 'Payroll Automation', '2022-09-01', '2023-03-31', 3),
(203, 'Cloud Migration', '2021-05-01', '2022-12-31', 1);

-- Employee_Project Assignments
INSERT INTO employee_projects (employee_id, project_id, role) VALUES
(101, 203, 'Lead Developer'),
(102, 203, 'DevOps Engineer'),
(103, 202, 'HR Analyst'),
(104, 202, 'Financial Analyst'),
(105, 201, 'Marketing Specialist');