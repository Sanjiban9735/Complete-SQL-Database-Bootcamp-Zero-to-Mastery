/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/

-- SELECT * from "90-95"
-- order by hire_date
Create or REPLACE view "90-95" as
SELECT emp_no , first_name , hire_date
from employees
where EXTRACT(year from hire_date) BETWEEN 1990 and 1995

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/

CREATe or replace view bigbucks AS
select e.emp_no, e.first_name , s.salary 
from employees as e 
join salaries as s using (emp_no)
where s.salary > 
order by salary

-- SELECT * from bigbucks
-- ...
