DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;
DROP TABLE IF EXISTS titles CASCADE;

CREATE TABLE "salaries" (
    "emp_no" VARCHAR PRIMARY KEY NOT NULL,
    "salary" float NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR PRIMARY KEY NOT NULL,
    "dept_name" VARCHAR NOT NULL
);

CREATE TABLE "titles" (
    "title_id" VARCHAR PRIMARY KEY NOT NULL,
    "title" VARCHAR NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" VARCHAR PRIMARY KEY NOT NULL,
    "emp_title" VARCHAR NOT NULL,
    "birth_date" VARCHAR NOT NULL,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "sex" VARCHAR NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
	FOREIGN KEY ("emp_no") REFERENCES salaries("emp_no"),
	FOREIGN KEY ("emp_title") REFERENCES titles("title_id")
);


CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR NOT NULL,
    "emp_no" VARCHAR NOT NULL,
	primary key (dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE "dept_emp" (
    "dept_no" VARCHAR NOT NULL,
    "emp_no" VARCHAR NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;

select * from employees ;