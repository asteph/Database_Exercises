-- mployees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows 
SELECT DISTINCT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- Employees whose last name starts with 'E' — 7,330 rows.
SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%';

-- Employees hired in the 90s — 135,214 row
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN CAST('1990-01-01' AS DATE) AND CAST('1999-12-31' AS DATE);

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE hire_date LIKE '199%';

-- Employees born on Christmas — 842 rows.
SELECT first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25';

-- Employees with a 'q' in their last name — 1,873 rows.
SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE '%q%';