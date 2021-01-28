--deletle table departments
drop table if EXISTS departments;

--Create Departments table
create table Departments (
	Dept_No varchar(10),
	Dept_Name varchar(30)
);

--deletle table Dept_EMP
drop table if EXISTS Dept_EMP;

--Create Dept_EMP table
create table Dept_EMP (
	EMP_No int,
	Dept_No varchar(10)
);

--deletle table Dept_Manager
drop table if EXISTS Dept_Manager;

--Create Dept_Manager table
create table Dept_Manager (
	Dept_No varchar(10),
	EMP_No int
);

--deletle table Employees
drop table if EXISTS Employees;

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

--deletle table Salaies
drop table if EXISTS Salaies;

--Create Salaies table
create table Salaies (
	EMP_No int, 
	Salary float
);

--deletle table Titles
drop table if EXISTS Titles;

--Create Titles table
create table Titles (
	Title_Id varchar(10), 
	Title varchar(100)
);

--Set primary keys for all 6 tables, one by one
--ALTER TABLE departments ADD PRIMARY KEY (Dept_No);
--ALTER TABLE Dept_Emp ADD PRIMARY KEY (Emp_No);

--select * from dept_emp