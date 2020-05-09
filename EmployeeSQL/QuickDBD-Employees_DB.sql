﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/pT4osH
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employees" (
    "emp_no" (INT)   NOT NULL,
    "emp_title_id" (VARCHAR)   NOT NULL,
    "birth_date" (DATE)   NOT NULL,
    "first_name" (VARCHAR)   NOT NULL,
    "last_name(" VARCHAR)   NOT NULL,
    "sex" (CHAR)   NOT NULL,
    "hire_date" (DATE)   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Titles" (
    "title_id" (VARCHAR)   NOT NULL,
    "title" (VARCHAR)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" (INT)   NOT NULL,
    "salary" (INT)   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "salary"
     )
);

CREATE TABLE "Departments" (
    "dept_no" (VARCHAR)   NOT NULL,
    "dept_name" (VARCHAR)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Dept_Emp" (
    "emp_no" (INT)   NOT NULL,
    "dept_no" (VARCHAR)   NOT NULL
);

CREATE TABLE "Dept_Manager" (
    "dept_no" (VARCHAR)   NOT NULL,
    "emp_no" (INT)   NOT NULL
);

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_title_id" FOREIGN KEY("title_id")
REFERENCES "Employees" ("emp_title_id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

