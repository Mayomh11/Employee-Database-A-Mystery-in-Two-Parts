DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

-- Create Employees Table
CREATE TABLE employees
(
	emp_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR (40),
	last_name VARCHAR (40),
	gender VARCHAR(1),
	hire_date DATE
);
-- Show columns and data types.
Select * FROM employees;

-- Create Departments Table
CREATE TABLE departments
(
	dept_no VARCHAR(6) PRIMARY KEY,
	dept_name VARCHAR(40),
);
-- Show columns and data types.
Select * FROM departments;

-- Create Department Employees Table
CREATE TABLE dept_emp
(
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(6),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	from_date VARCHAR(40),
	to_date VARCHAR(40)
);

-- Show columns and data types.
Select * FROM dept_emp;

-- Create Department Managers Table
CREATE TABLE dept_manager
(
	dept_no VARCHAR(6),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date VARCHAR(40),
	to_date VARCHAR(40)
);
-- Show columns and data types.
Select * FROM dept_manager;


-- Create Salaries Table
CREATE TABLE salaries
(
	dept_no VARCHAR(6),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT,
	from_date VARCHAR(40),
	to_date VARCHAR(40)
);
-- Show columns and data types.
Select * FROM salaries;

-- Create Titles Table
CREATE TABLE titles
(
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	title VARCHAR(40),
	from_date VARCHAR(40),
	to_date VARCHAR(40),
); 
-- Show columns and data types.
Select * FROM titles;
