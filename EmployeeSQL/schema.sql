--Create titles table
CREATE TABLE titles (
 	title_id VARCHAR PRIMARY KEY,
 	title VARCHAR NOT NULL
);

--Create employees table
CREATE TABLE employees (
 	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR,
 	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR
);

--Create dept_emp table
CREATE TABLE dept_emp (
	emp_no INTEGER,
	dept_no VARCHAR PRIMARY KEY
);

--Create departments table
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

--Create dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR PRIMARY KEY,
	emp_no INTEGER
);

--Create salaries table
CREATE TABLE salaries (
	emp_no INTEGER PRIMARY KEY,
	salary VARCHAR
);
