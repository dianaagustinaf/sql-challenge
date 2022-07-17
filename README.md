# sql-challenge
## University of Birmingham / Data Analysis Assignment

In this assignment I have performed data modeling, data engineering, and data analysis on test corporate employees data.

## Data Modeling

I have inspected the 6 CSVs, look for unique values for PK, and sketched out an ERD of the tables:

<img src="/EmployeeSQL/ERD.png" width="600">

* Full picture here: [ERDiagram](/EmployeeSQL/ERD.png).

## Data Engineering

I have created a DB and a table schema for each of the six CSV files, specifying data types, primary keys, foreign keys, and other constraints.

* SQL File [here](/EmployeeSQL/create-tables-employee-db.sql).

## Data Analysis

I have listed: 
* the following details of each employee: employee number, last name, first name, sex, and salary.

* first name, last name, and hire date for employees who were hired in 1986.

* the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

* the department of each employee with the following information: employee number, last name, first name, and department name.

* first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

* all employees in the Sales department, including their employee number, last name, first name, and department name.

* all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

* the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

* SQL File [here](/EmployeeSQL/analysis-queries.sql).

## Bonus

I have connected the database to SQLAlchemy and queried the DB. And from the results I have made a bar plot using matplotlib.

* Notebook [here](/EmployeeSQL/data-modeling-and-analysis.ipynb).
