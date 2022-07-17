--1
SELECT e.emp_no, last_name, first_name, sex, sa.salary
FROM employee as e
JOIN salary as sa ON sa.emp_no = e.emp_no

--2
SELECT e.first_name, e.last_name, e.hire_date
FROM employee as e
WHERE e.hire_date BETWEEN '1986-01-01' and '1986-12-31'

--3
SELECT man.dept_no, dep.dept_name, man.emp_no, em.last_name, em.first_name
FROM dept_manager as man
JOIN employee as em ON em.emp_no = man.emp_no
JOIN department as dep ON dep.dept_no = man.dept_no

--4
SELECT em.emp_no, em.last_name, em.first_name, dep.dept_name
FROM employee as em
JOIN dept_emp ON dept_emp.emp_no = em.emp_no
JOIN department as dep ON dep.dept_no = dept_emp.dept_no

--5
SELECT em.first_name, em.last_name, em.sex
FROM employee as em
WHERE em.first_name = 'Hercules' AND em.last_name LIKE 'B%'

--6
SELECT em.emp_no, em.last_name, em.first_name, dep.dept_name
FROM employee as em
JOIN dept_emp ON dept_emp.emp_no = em.emp_no
JOIN department as dep ON dep.dept_no = dept_emp.dept_no
WHERE dep.dept_name = 'Sales'

--7
SELECT em.emp_no, em.last_name, em.first_name, dep.dept_name
FROM employee as em
JOIN dept_emp ON dept_emp.emp_no = em.emp_no
JOIN department as dep ON dep.dept_no = dept_emp.dept_no
WHERE dep.dept_name = 'Sales' OR dep.dept_name = 'Development'

--8
SELECT last_name, COUNT(last_name) AS CountLN
FROM employee
GROUP BY last_name
ORDER BY CountLN DESC




