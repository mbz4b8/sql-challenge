CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL PRIMARY KEY,
    "dept_name" VARCHAR   NOT NULL
);

SELECT *
from departments

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL),
	
SELECT *
FROM dept_emp
    
CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INTEGER   NOT NULL);

SELECT *
from dept_manager

CREATE TABLE "employees" (
    "emp_no" INTEGER   NOT NULL PRIMARY KEY,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_rate" TIMESTAMP   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" TIMESTAMP   NOT NULL
	);
	
SELECT *
FROM employees

CREATE TABLE "salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL
	);

SELECT *
FROM salaries

CREATE TABLE "titles" (
    "title_id" VARCHAR   NOT NULL PRIMARY KEY,
    "title" VARCHAR   NOT NULL
);

INSERT INTO titles (title_id, title)
VALUES
	('s0001', 'Staff'),
	('s0002', 'Senior Staff'),
	('e0001', 'Assistant Engineer'),
	('e0002', 'Engineer'),
	('e0003', 'Senior Engineer'),
	('e0004', 'Technique Leader'),
	('m0001', 'Manager');

SELECT *
FROM titles

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");