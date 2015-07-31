SELECT concat(e.first_name, ' ', e.last_name) full_name, t.title
FROM employees e
LEFT JOIN titles t ON e.emp_no = t.emp_no
WHERE t.title LIKE 'Senior%'
	AND t.to_date > now();

SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) full_name 
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments d ON dm.dept_no = d.dept_no
WHERE e.gender = 'F'
	AND dm.to_date > now();

SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) full_name, s.salary 
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN salaries s ON e.emp_no = s.emp_no
JOIN departments d ON dm.dept_no = d.dept_no
WHERE s.to_date > now()
	AND dm.to_date > now();


SELECT t.title title, AVG(s.salary) average_salary 
FROM titles t
JOIN salaries s ON t.emp_no = s.emp_no
WHERE s.to_date > now() 
	AND t.to_date > now()
GROUP BY title
ORDER BY average_salary;


SELECT concat(e.first_name, ' ', e.last_name) emp_full_name, d.dept_name, concat(e2.first_name, ' ', e2.last_name) manager_full_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
JOIN dept_manager dm ON de.dept_no = dm.dept_no
JOIN employees e2 ON dm.emp_no = e2.emp_no 
WHERE de.to_date > now()
	AND dm.to_date > now()
ORDER BY d.dept_name, e.last_name, e.first_name;



