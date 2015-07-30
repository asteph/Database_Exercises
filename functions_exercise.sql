-- mployees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows 

SELECT count(*), gender
FROM employees
WHERE first_name = 'Irena'
	OR first_name = 'Vidya'
	OR first_name = 'Maya'
GROUP BY gender;
	
-- Find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%'
	AND last_name LIKE '%E';


-- Find all employees hired in the 90s and born on Christmas — 362 rows. Also shows days worked assuming they have been working up to today.


SELECT concat(first_name, ' ', last_name) AS full_name, datediff(now(), hire_date)
FROM employees
WHERE hire_date LIKE '199%'
	AND birth_date LIKE '%-12-25';



-- Employees with a 'q' in their last name — 1,873 rows.
SELECT concat(first_name, ' ', last_name) AS full_name, count(*) AS instances
FROM employees
WHERE last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%'
GROUP BY full_name;	