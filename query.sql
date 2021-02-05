/*
#########################################
#	SECTION 5:SQL Deep Dive		#
#########################################
*/

-- Exercise: Simple Queries

SELECT * FROM departments;
SELECT * FROM salaries;
SELECT * FROM titles;

-- Exercise: Aggregate Functions

SELECT AVG(salary) FROM salaries;
SELECT MAX(birth_date) FROM employees;
SELECT COUNT(id) FROM towns;
SELECT COUNT(*) FROM countrylanguage WHERE isofficial = True;
SELECT AVG(lifeexpectancy) FROM country;
SELECT AVG(population) FROM city WHERE countrycode = 'NLD';

-- Exercise: Filtering Data

SELECT COUNT(*) FROM customers WHERE gender = 'F' AND (state = 'OR' OR state = 'NY');

-- Exercise: The Where Clause

SELECT * FROM Customers WHERE City = 'Berlin';
SELECT * FROM Customers WHERE NOT City = 'Berlin';
SELECT * FROM Customers WHERE CustomerID = 32;
SELECT * FROM Customers WHERE City = 'Berlin' AND PostalCode = 12209;
SELECT * FROM Customers WHERE City = 'Berlin' OR City = 'London';

-- Exercise: Comparison Operators

SELECT COUNT(*) FROM customers WHERE gender='F' AND state='OR';
SELECT firstname, lastname, income, age FROM customers WHERE age > 44 AND income >= 100000;
SELECT firstname, lastname, age, income FROM customers WHERE (age >=30 and age <= 50) AND income < 50000;
SELECT AVG(income) FROM customers WHERE age > 20 AND age < 50;

-- Exercise: Operator Precedence

SELECT age, income, country FROM customers WHERE (age < 30 OR age >= 50) AND (country = 'Japan' OR country = 'Australia') AND income > 50000;
SELECT SUM(totalamount) FROM orders WHERE (orderdate >= '2004-06-01' AND orderdate <= '2004-06-30') AND totalamount > 100;

-- Exercise: NULL Value Coalescing

SELECT AVG(coalesce(age,15)) from "Student";
SELECT id, coalesce(name, 'fallback'), coalesce(lastName, 'lastName'), age FROM "Student";

-- Exercise: 3 Valued Logic

SELECT COALESCE(address2,'No Address') FROM customers;
SELECT * FROM customers WHERE address2 IS NOT null;
SELECT coalesce(lastName, 'Empty'), * from customers where (age IS NULL);

-- Exercise: BETWEEEN + AND

SELECT age, income FROM customers WHERe income < 50000 AND (age BETWEEN 30 AND 50);
SELECT AVG(income) FROM customers WHERe age BETWEEN 20 AND 50;

-- Exercise: IN Keyword

SELECT COUNT(orderid) FROM orders WHERE customerid IN (7888, 1082, 12808, 9623);
SELECT COUNT(id) FROM city WHERE district IN ('Zuid-Holland', 'Noord-Brabant', 'Utrecht');

-- Exercise: LIKE Keyword

SELECT emp_no, first_name, EXTRACT (YEAR FROM AGE(birth_date)) as "age" FROM employees WHERE first_name LIKE 'M%';
SELECT COUNT(emp_no) FROM employees WHERE first_name ILIKE 'A%R';
SELECT COUNT(customerid) FROM customers WHERE zip::text LIKE '%2%';
SELECT COUNT(customerid) FROM customers WHERE zip::text LIKE '2_1%';
SELECT COALESCE(state, 'No State'), phone FROM customers WHERE phone LIKE '302%';

-- Exercise: Data and Timestamp

SELECT AGE(birth_date), * FROM employees WHERE (EXTRACT (YEAR FROM AGE(birth_date))) > 60;
SELECT COUNT(emp_no) FROM employees WHERE date_part('month', hire_date) = 02;
SELECT COUNT(emp_no) FROM employees WHERE date_part('month', birth_date) = 11;
SELECT MAX(AGE(birth_date)) FROM employees;
SELECT COUNT(orderid) FROM orders WHERE DATE_TRUNC('month', orderdate) = date '2004-01-01';

-- Exercise: Distinct Keyword

SELECT DISTINCT(title) FROM titles;
SELECT COUNT(DISTINCT(birth_date)) FROM employees;
SELECT DISTINCT(lifeexpectancy) FROM country WHERE lifeexpectancy IS NOT NULL ORDER BY lifeexpectancy DESC;

-- Exercise: Sorting Data

SELECT first_name, last_name FROM employees ORDER BY first_name ASC, last_name DESC;
SELECT AGE(birth_date),* FROM employees ORDER BY AGE(birth_date) DESC;
SELECT * FROM employees WHERE first_name LIKE 'K%' ORDER BY hire_date DESC;

-- Exercise: Inner Join


