/*
* DB: Store
* Table: products
* Question: Show NULL when the product is not on special (0)
*/

SELECT *, nullif(special,0) as "special" from products
