/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
SELECT first_name , last_name FROM employees
order by  first_name ASC , last_name DESC

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/
SELECT first_name , last_name , birth_date FROM employees
order by age(birth_date) asc

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/

SELECT first_name , last_name , hire_date from employees
WHERE first_name IlIKE 'k%'
ORDER by hire_date desc
