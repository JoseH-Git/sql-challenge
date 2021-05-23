--  1. List the following details of each employee: employee number, last name, first name, sex, and salary.
--     Getting the data from Employees Table and salaries

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

--  2. List first name, last name, and hire date for employees who were hired in 1986.
--     Filtering the hiring range date from employees

SELECT last_name, first_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' and hire_date <= '1986-12-31';

--  3. List the manager of each department with the following information: department number, department name, 
--     the manager's employee number, last name, first name.
--     Getting the data from dept_manager, departments and employees.

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

Select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
From dept_emp
Join employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

SELECT * from dept_emp