CREATE TABLE employees (
    emp_no INT  NOT NULL,
    emp_title_id VARCHAR   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex CHAR   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE titles (
    title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title
     )
);

CREATE TABLE salaries (
    emp_no INT  NOT NULL,
    salary INT  NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        salary
     )
);

CREATE TABLE departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE dept_emp (
    emp_no INT  NOT NULL,
    dept_no VARCHAR   NOT NULL
);

CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT  NOT NULL
);

ALTER TABLE titles ADD CONSTRAINT fk_titles_title_id FOREIGN KEY(title_id)
REFERENCES employees (emp_title_id);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES dmployees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);