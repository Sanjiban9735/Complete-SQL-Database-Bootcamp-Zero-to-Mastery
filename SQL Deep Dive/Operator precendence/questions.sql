
/*
* DB: Store
* Table: Customers
* Question: 
* Select people either under 30 or over 50 with an income above 50000
* Include people that are 50
* that are from either Japan or Australia
*/
SELECt firstname, lastname ,age, income , country FROM "public"."customers"
WHERE (age < 30 OR age >= 50) 
AND income > 50000
ANd (country = 'Japan' OR country = 'Australia')

/*
* DB: Store
* Table: Orders
* Question: 
* What was our total sales in June of 2004 for orders over 100 dollars?
*/

SELECt sum(totalamount) FROM "public"."orders"
Where (orderdate >= '2004-06-01' AND orderdate <= '2004-06-30')
AND totalamount > 100
