-- List employee number, last name, first name, sex, and salary of each employee.


-- List first name, last name, and hire date for the employees who were hired 
-- in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986'
;
-- List manager of each department along with their department number, department 
-- name, employee number, last name, and first name.


-- List department number for each employee along with that employee’s employee 
-- number, last name, first name, and department name.


-- List first name, last name, and sex of each employee whose first name is 
-- Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
;
-- List each employee in the Sales department, including their employee number, 
-- last name, and first name.


-- List each employee in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.


-- List frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name).
