--List the employee number, last name, first name, sex, and salary of each employee
--Join employees and salaries tables 
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s
ON s.emp_no=e.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE hire_date LIKE '%1986';

--List the manager of each department along with their 
--department number, department name, employee number, last name, and first name
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments as d
JOIN dept_manager as dm
ON dm.dept_no=d.dept_no
JOIN employees as e
ON e.emp_no=dm.emp_no;

--List the department number for each employee along with that employee’s 
--employee number, last name, first name, and department name
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
JOIN dept_emp AS de
ON de.dept_no=d.dept_no
JOIN employees as e
ON e.emp_no=de.emp_no;

--List first name, last name, and sex of each employee whose first name is 
--Hercules and whose last name begins with the letter B
SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE e.first_name = 'Hercules'
AND e.last_name LIKE 'B%';

--List each employee in the Sales department, 
--including their employee number, last name, and first name
SELECT de.emp_no, e.last_name, e.first_name
FROM dept_emp as de
JOIN employees as e
ON e.emp_no=de.emp_no
WHERE de.dept_no='d007';

--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name 
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments as d
JOIN dept_emp as de
ON de.dept_no=d.dept_no
JOIN employees as e
ON e.emp_no=de.emp_no
WHERE d.dept_name='Sales' 
OR d.dept_name='Development';

--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name)
SELECT last_name, COUNT(last_name) AS "name count"
FROM employees
GROUP BY last_name
ORDER BY "name count" DESC;

