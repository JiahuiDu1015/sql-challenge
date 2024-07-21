CREATE TABLE departments (
    dept_no VARCHAR (255) PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL
);

SELECT * FROM departments;

CREATE TABLE titles (
    title_id VARCHAR(255) PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

SELECT * FROM titles;

CREATE TABLE employees (
    emp_no VARCHAR(255) PRIMARY KEY,
    emp_title_id VARCHAR(255),
    birth_date TEXT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date TEXT,
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);


SELECT * FROM employees;

CREATE TABLE dept_emp (
    emp_no VARCHAR(255),
	dept_no VARCHAR(255),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_emp;

CREATE TABLE dept_managers (
    dept_no VARCHAR(255),
	emp_no VARCHAR(255),
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_managers;

CREATE TABLE salaries (
    emp_no VARCHAR(255),
    salary DECIMAL(10, 0),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;