-- Query 1
SELECT 	employees.emp_no, 
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no ;

-- Query 2 (I need to change the type of data for this collumn to an int for this to work)

SELECT first_name,
last_name,
hire_date
FROM employees
WHERE hire_date <= 1986;

-- Query 3
SELECT 	departments.dept_no,
departments.dept_name,
dept_manager.emp_no
FROM dept_manager
INNER JOIN departments ON
departments.dept_no = dept_manager.dept_no 

SELECT employees.last_name,
employees.first_name
FROM employees
INNER JOIN dept_manager ON
employees.emp_no = dept_manager.emp_no ;


-- Query 4
SELECT employees.emp_no,
employees.first_name
employees.last_name,
FROM employees
WHERE 

-- Query 5
SELECT first_name,
last_name,
sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Query 6
SELECT 
FROM 
WHERE

-- Query 7
SELECT 
FROM 
WHERE

-- Query 8
SELECT 
FROM 
WHERE



