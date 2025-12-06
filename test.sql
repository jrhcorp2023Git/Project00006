-- test.sql for Project00006

-- 1. Verify table creation
SELECT name FROM sqlite_master WHERE type='table';

-- 2. Count rows in each table
SELECT COUNT(*) AS dept_count FROM Departments;
SELECT COUNT(*) AS emp_count FROM Employees;
SELECT COUNT(*) AS proj_count FROM Projects;
SELECT COUNT(*) AS assign_count FROM Employee_Project_Assignments;

-- 3. Check for orphaned employees (employees without a valid department)
SELECT e.employee_id, e.first_name, e.last_name
FROM Employees e
LEFT JOIN Departments d ON e.department_id = d.department_id
WHERE d.department_id IS NULL;

-- 4. Check for orphaned project assignments (assignments without valid employee or project)
SELECT a.employee_id, a.project_id
FROM Employee_Project_Assignments a
LEFT JOIN Employees e ON a.employee_id = e.employee_id
LEFT JOIN Projects p ON a.project_id = p.project_id
WHERE e.employee_id IS NULL OR p.project_id IS NULL;

-- 5. Validate salary totals (compare against expected values)
SELECT d.department_name, SUM(e.salary) AS total_salary
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

-- 6. Ensure no duplicate assignments
SELECT employee_id, project_id, COUNT(*) AS dup_count
FROM Employee_Project_Assignments
GROUP BY employee_id, project_id
HAVING COUNT(*) > 1;