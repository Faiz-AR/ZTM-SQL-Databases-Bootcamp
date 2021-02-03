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


