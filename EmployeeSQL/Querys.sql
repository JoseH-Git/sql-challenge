--  1. List the following details of each employee: employee number, last name, first name, sex, and salary.
--     Getting the data from Employees Table and salaries

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

--  2. List first name, last name, and hire date for employees who were hired in 1986.
--     Filtering the hiring range date from employees

SELECT last_name, first_name, hire_date
FROM employees
WHERE hire_date >= '01/01/1986' and hire_date <= '12/31/1986';

--  3. List the manager of each department with the following information: department number, department name, 
--     the manager's employee number, last name, first name.
--     Getting the data from dept_manager, departments and employees.

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no;

-- 4. List the department of each employee with the following information: employee number, 
--    last name, first name, and department name.

Select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
From dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" 
--    and last names begin with "B."

Select last_name, first_name,sex
From employees
Where first_name = 'Hercules' and last_name LIKE 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, 
--    first name, and department name.

Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Join departments on departments.dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, including their employee number, 
--    last name, first name, and department name.

Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Join departments on departments.dept_name = 'Sales' or departments.dept_name = 'Development'

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees 
--    share each last name.

SELECT last_name, count(last_name) AS "Last Name Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Frequency" DESC;