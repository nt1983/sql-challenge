--show all tables rows to make sure about data import process from .csv file
select * from titles;
select * from departments;
select * from employees;
select * from salaries;
select * from dept_manager;
select * from dept_emp;

--1.List the following details of each employee: employee number, last name, first name, sex, and salary.
select emp.emp_no, emp.last_name, emp.first_name, emp.sex, sa.salary 
from employees as emp
join salaries as sa
on emp.emp_no=sa.emp_no;

--2.List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

--3.List the manager of each department with: department number, department name, the manager's employee number, last name, first name.
select dep.dept_no, dep.dept_name, dpm.emp_no, emp.last_name, emp.first_name
from departments as dep
join dept_manager as dpm
on dep.dept_no=dpm.dept_no
join employees as emp
on emp.emp_no=dpm.emp_no;

--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name 
from employees as emp
join dept_emp as demp
on emp.emp_no=demp.emp_no
join departments as dep
on demp.dept_no=dep.dept_no;

--5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name='Hercules' and last_name like 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name 
from employees as emp
join dept_emp as demp
on emp.emp_no=demp.emp_no
join departments as dep
on demp.dept_no=dep.dept_no
where dep.dept_name='Sales';

--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name 
from employees as emp
join dept_emp as demp
on emp.emp_no=demp.emp_no
join departments as dep
on demp.dept_no=dep.dept_no
where dep.dept_name in ('Sales', 'Development');

--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc;
