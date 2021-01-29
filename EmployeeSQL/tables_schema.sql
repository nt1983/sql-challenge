--deletle existing tables in EmployeeDB
drop table if EXISTS departments cascade;
drop table if EXISTS Dept_EMP cascade;
drop table if EXISTS Dept_Manager cascade;
drop table if EXISTS Employees cascade;
drop table if EXISTS Salaries cascade;
drop table if EXISTS Titles cascade;

--Create Departments table
create table Departments (
	Dept_No varchar(10),
	Dept_Name varchar(30)
);

--Create Dept_EMP table
create table Dept_EMP (
	EMP_No int,
	Dept_No varchar(10)
);

--Create Dept_Manager table
create table Dept_Manager (
	Dept_No varchar(10),
	EMP_No int
);

--Create Employees table
create table Employees (
	EMP_No int, 
	Emp_Title_Id varchar(10),
	Birth_Date Date,
	First_Name Varchar(50),
	Last_Name Varchar(50),
	Sex char(1),
	Hire_Date date
);

--Create Salaies table
create table Salaries (
	EMP_No int, 
	Salary float
);

--Create Titles table
create table Titles (
	Title_Id varchar(10), 
	Title varchar(100)
);

--Set primary keys for all tables which is needed, one by one
ALTER TABLE departments ADD PRIMARY KEY (Dept_No);
ALTER TABLE dept_manager ADD PRIMARY KEY (Emp_No);
ALTER TABLE employees ADD PRIMARY KEY (Emp_No);
ALTER TABLE salaries ADD PRIMARY KEY (Emp_No);
ALTER TABLE titles ADD PRIMARY KEY (title_id);

--Set foreign keys for tables which are needed, one by one
ALTER TABLE dept_emp ADD CONSTRAINT fk_emp_no FOREIGN KEY(emp_no) REFERENCES employees(emp_no);
ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_no FOREIGN KEY(dept_no) REFERENCES departments(dept_no);
ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_no FOREIGN KEY (dept_no) REFERENCES departments(dept_no);
ALTER TABLE dept_manager ADD CONSTRAINT fk_emp_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no);
ALTER TABLE salaries ADD CONSTRAINT fk_emp_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no);
AlTER TABLE employees ADD CONSTRAINT fk_emp_title_id FOREIGN KEY (emp_title_id) REFERENCES titles(title_id);
