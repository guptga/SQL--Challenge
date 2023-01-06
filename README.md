# SQL--Challenge

# Background

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.
For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. 

We will design the tables to hold data in the CSVs, import the CSVs into a SQL database (Postgres), and answer questions about the data. The two major tasks are:

1) Data Engineering / Data Modeling

2) Data Analysis

Data Modeling

Inspect the CSVs and sketch out an ERD of the tables. We use the Quick Database Diagrams.


![QuickDBD Data Model](https://user-images.githubusercontent.com/116124534/210914193-d84d1201-fb94-42be-97e1-deb57a71af35.png)



# Data Engineering

-- Create a table schema for each of the six CSV files.

-- For the primary keys check to see if the column is unique, otherwise create a composite key. 

-- Which takes to primary keys in order to uniquely identify a row.

-- Create tables in the correct order to handle foreign keys.

-- Import each CSV file into the corresponding SQL table. 

-- Note be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.


# Data Analysis

1. List the employee number, last name, first name, sex, and salary of each employee 

2. List the first name, last name, and hire date for the employees who were hired in 1986 

3. List the manager of each department along with their department number, department name, employee number, last name, and first name 

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name 

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 

6. List each employee in the Sales department, including their employee number, last name, and first name 

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
