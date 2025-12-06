-- queries.sql for Project 00006


-- Query 1 - List all Employees with their department
SELECT e.employee_id as employee_id,
		e.first_name as first_name,
		e.last_name as last_name,
		d.department_name as department_name
	From Employees e
	Join Departments d
	on e.department_id = d.department_id;

-- Query 2- Show projects with assigned employees
SELECT
	p.project_name as project_name,
	e.first_name || ' ' || e.last_name AS employee_name,
    a.role as role
FROM Employee_Project_Assignments a
JOIN Employees e 
    ON a.employee_id = e.employee_id
JOIN Projects p 
    ON a.project_id = p.project_id;
	
	
-- Query 3 - Department salary totals
SELECT 
    d.department_name AS department_name,
    SUM(e.salary) AS total_salary
FROM Employees e
JOIN Departments d
    ON e.department_id = d.department_id
GROUP BY d.department_name;