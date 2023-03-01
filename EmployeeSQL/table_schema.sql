CREATE TABLE departments(
	dept_no VARCHAR(15) PRIMARY KEY,
	dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE titles(
	title_id VARCHAR(15) PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);

CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	emp_title VARCHAR(15),
	birth_date VARCHAR(30),
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR,
	hire_date VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(15) NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(15) NOT NULL,
	emp_no INTEGER NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries(
	emp_no INTEGER PRIMARY KEY NOT NULL,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
