-- employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows 
-- Now add a condition to find everybody with those names who is also male — 441 rows.
SELECT first_name, last_name
FROM employees
WHERE (first_name = 'Irena'
	OR first_name = 'Vidya'
	OR first_name = 'Maya')
	AND gender = 'M';

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%'
	OR last_name LIKE '%E';
	
-- Find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%'
	AND last_name LIKE '%E';


-- Find all employees hired in the 90s and born on Christmas — 362 rows.

SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN CAST('1990-01-01' AS DATE) AND CAST('1999-12-31' AS DATE)
	AND birth_date LIKE '%-12-25';

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE hire_date LIKE '199%'
	AND birth_date LIKE '%-12-25';



-- Employees with a 'q' in their last name — 1,873 rows.
SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%';