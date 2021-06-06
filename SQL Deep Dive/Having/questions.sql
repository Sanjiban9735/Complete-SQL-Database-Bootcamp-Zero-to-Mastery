
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/


SELECT e.emp_no, count(t.title)
from employees as e 
JOIN titles as t using(emp_no)
where EXTRACT(year FROM hire_date) > '1991' 
group by e.emp_no
having count(t.title) > 2
order by emp_no

/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/
select e.emp_no,count(s.salary) 
from employees as e
join salaries as s USING(emp_no)
join dept_emp as de USING(emp_no)
where de.dept_no = 'd005'
group by e.emp_no
having count(s.salary) > 15
order by emp_no



--select * from departments



/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/

select e.emp_no , count(de.dept_no)
--e.first_name , de.dept_no
from employees as e
Join dept_emp as de using(emp_no)
group by e.emp_no
HAVING count(de.dept_no) >= 2
order by e.emp_no;

