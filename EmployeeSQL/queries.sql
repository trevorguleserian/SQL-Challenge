-- Query 1 (done)
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
WHERE hire_date LIKE '1986%';

-- Query 3
SELECT 	departments.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name
FROM dept_manager
INNER JOIN departments ON
departments.dept_no = dept_manager.dept_no 
	INNER JOIN employees ON
	employees.emp_no = dept_manager.emp_no ;




-- Query 4
SELECT departments.dept_name,
dept_emp.emp_no,
employees.last_name,
employees.first_name
FROM dept_emp
INNER JOIN departments ON
departments.dept_no = dept_emp.dept_no 
	INNER JOIN employees ON
	employees.emp_no = dept_emp.emp_no ;

-- Query 5
SELECT first_name,
last_name,
sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Query 6
SELECT employees.emp_no,
employees.last_name,
employees.first_name
FROM employees
WHERE emp_no IN(
				SELECT emp_no
				FROM dept_emp
				WHERE dept_no IN(
									SELECT dept_no
									FROM departments
									WHERE dept_name = 'Sales'
				
				)
			) ;

-- Query 7
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees,
departments
WHERE emp_no IN(
				SELECT emp_no
				FROM dept_emp
				WHERE dept_no IN(
									SELECT dept_no
									FROM departments
									WHERE dept_name IN ('Sales','Development')
				
				)
			) ;

-- Query 8
SELECT last_name "Last Name",
COUNT(last_name) "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC; 



