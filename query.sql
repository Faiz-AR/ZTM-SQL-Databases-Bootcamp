/*
#########################
#	SECTION 5	#
#########################
*/

-- Exercise:Simple Queries

SELECT * FROM departments;
SELECT * FROM salaries;
SELECT * FROM titles;

-- Exercise:Aggregate Functions

SELECT AVG(salary) FROM salaries;
SELECT MAX(birth_date) FROM employees;
SELECT COUNT(id) FROM towns;
SELECT COUNT(*) FROM countrylanguage WHERE isofficial=True;
SELECT AVG(lifeexpectancy) FROM country;
SELECT AVG(population) FROM city WHERE countrycode='NLD';

