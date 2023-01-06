--List the employee number, last name, first name, sex, and salary of each employee (2 points)

SELECT Emp."Emp_No" AS Employee_Number,"Last_Name","First_Name","Sex","Salary"
--Emp."Emp_no" AS Employee_Number, Emp."last_name", Emp."first_name", Emp."sex"
FROM public."Employee" Emp
Inner Join public."Salaries" Sal 
ON Emp."Emp_No" = Sal."Emp_No"
limit 10;

--List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)

SELECT Emp."First_Name", Emp."Last_Name",Emp."Hire_Date"
FROM public."Employee" Emp
Where Emp."Hire_Date"> '1986-1-1'::date And Emp."Hire_Date" < '1987-1-1'::date
LIMIT(5);

--List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)

SELECT Mgr."Dept_No", Dep."Dept_Name", Mgr."Emp_No", Emp."Last_Name",Emp."First_Name"
From public."Dept_Manager" Mgr
Join public."Employee" Emp
ON Mgr."Emp_No" = Emp."Emp_No"
Join public."Departments" Dep
ON Mgr."Dept_No" = Dep."Dept_No"
limit (5);

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)


SELECT Dep."Dept_No",Emp."Emp_No" as "Employee Number", Emp."Last_Name",Emp."First_Name", Dep."Dept_Name"
From public."Dept_Emp" DEmp
Join public."Employee" Emp
ON DEmp."Emp_No" = Emp."Emp_No"
Join public."Departments" Dep
ON DEmp."Dept_No" = Dep."Dept_No"
limit (5);


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)

SELECT "First_Name","Last_Name","Sex"
FROM public."Employee"
WHERE "First_Name" = 'Hercules'
AND "Last_Name" LIKE 'B%';


--List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT DEmp."Emp_No", Emp."Last_Name", Emp."First_Name", Dep."Dept_Name"
FROM public."Dept_Emp" DEmp
INNER JOIN public."Employee" Emp
ON DEmp."Emp_No" = Emp."Emp_No"
INNER JOIN public."Departments" Dep
ON Dep."Dept_No" = DEmp."Dept_No"
WHERE Dep."Dept_Name" = 'Sales';


--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)

SELECT DEmp."Emp_No", Emp."Last_Name", Emp."First_Name", Dep."Dept_Name"
FROM public."Dept_Emp" DEmp
INNER JOIN public."Employee" Emp
ON DEmp."Emp_No" = Emp."Emp_No"
INNER JOIN public."Departments" Dep
ON Dep."Dept_No" = DEmp."Dept_No"
WHERE Dep."Dept_Name" = 'Sales'
OR Dep."Dept_Name" = 'Development';


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)

SELECT "Last_Name",
count("Last_Name") AS frequency
FROM public."Employee"
GROUP BY "Last_Name"
ORDER BY
COUNT("Last_Name") DESC;
