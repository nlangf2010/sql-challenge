select emp_no, last_name, first_name, sex
from employees;

select emp_no, salary
from salaries;

select * from employees

-- list employee number, last name, first name, sex, and salary

select employees.emp_no, employees.last_name, employees.first_name,
	employees.sex, salaries.salary from employees
inner join salaries on employees.emp_no=salaries.emp_no;

-- list first name, last name, hire date for employees hired in 1986

select first_name, last_name, hire_date 
from employees
where hire_date < '1987-01-01'
AND hire_date >'1985-12-31';

select * from departments;
select * from department_manager;
select* from employees;
select * from titles;

-- list dept num, dept name, manager emp num, last name, first name

select department_manager.dept_no, departments.dept_name, department_manager.emp_no, employees.last_name, employees.first_name
from department_manager
inner join departments on department_manager.dept_no = departments.dept_no
inner join employees on department_manager.emp_no = employees.emp_no

-- list department of each employee with employee num, last name, first name, and dept name

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join department_employee on employees.emp_no=department_employee.emp_no
inner join departments on department_employee.dept_no=departments.dept_no

--list first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"

select first_name, last_name, sex
from employees
where first_name='Hercules'
and last_name like 'B%'

--list all employees in the Sales department including employee number, last name, first name, and department name
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees 
inner join department_employee on employees.emp_no=department_employee.emp_no
inner join departments on department_employee.dept_no=departments.dept_no
where dept_name= 'Sales';


--list all employees in the Sales and Development depts, including emp num, last name, first nae and dept name

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees 
inner join department_employee on employees.emp_no=department_employee.emp_no
inner join departments on department_employee.dept_no=departments.dept_no
where dept_name IN ('Sales', 'Development');

--in descending order, list the frequency count of employee last names
select last_name, count(last_name)
as frequency
from employees
group by last_name
order by count(last_name) desc;









