--1--

SELECT ship_country
FROM orders
WHERE ship_country LIKE 'U%'

SELECT *
FROM orders

--2--


SELECT order_id, customer_id, freight, ship_country
FROM orders
WHERE ship_country LIKE 'N%'
ORDER BY freight DESC
LIMIT 10


--3--

SELECT *
FROM employees

SELECT first_name, last_name, home_phone, region
FROM employees
WHERE region is null


--4--

SELECT first_name, last_name
FROM employees
WHERE region is not null


--5--

SELECT postal_code
FROM employees
ORDER BY country DESC



--6--

SELECT *
FROM orders

SELECT SUM(freight) 
FROM orders
WHERE ship_region is not null
ORDER BY SUM(freight) > 2750 DESC


--7--

SELECT country
FROM customers
EXCEPT
SELECT country
FROM employees




--8--

SELECT country
FROM employees
UNION 
SELECT country
FROM customers

--9--
SELECT country
FROM customers
INTERSECT 
SELECT country 
FROM suppliers
EXCEPT
SELECT country
FROM employees