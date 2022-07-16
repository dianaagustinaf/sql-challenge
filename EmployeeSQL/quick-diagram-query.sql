# 9 unique departments
Department
-
dept_no PK string
dept_name UNIQUE string


Dept_Manager
-
dept_no string FK - Department.dept_no
emp_no PK int


Title
-
title_id PK string
title UNIQUE string


Employee
-
emp_no PK int
emp_title_id string FK >- Title.title_id
birth_date date 
first_name string
last_name string
sex char 
hire_date date


Salary
-
emp_no PK int FK - Employee.emp_no
salary money


# 331603 rows without unique values / PK
# emp_no + dept_no = No Duplicated = Composite PKey
Dept_Emp
-
emp_no PK int FK >-< Employee.emp_no
dept_no PK string FK >-< Department.dept_no
