
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/


select b.orderid , a.customerid , concat(a.firstname ,' ' ,a.lastname) as "Name" ,a.state
from customers as a 
inner join orders as b On
a.customerid = b.customerid
where a.state in ('OH' , 'NY' , 'OR')
ORDER by b.orderid

/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/

select i.prod_id , p.title , p.common_prod_id , i.quan_in_stock
from products as p
inner JOIN inventory as i on 
i.prod_id = p.prod_id
order by i.prod_id

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

SELECT e.emp_no , concat(e.first_name , ' ' , e.last_name) as  "Name" , ds.dept_name
from employees as e
inner join dept_emp as d 
on d.emp_no = e.emp_no
INNER join departments as ds 
on ds.dept_no = d.dept_no
order by e.emp_no

