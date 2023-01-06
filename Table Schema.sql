-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Titles" (
    "Title_Id" varchar(10)   NOT NULL,
    "Title" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Title_Id"
     ),
    CONSTRAINT "uc_Titles_Title" UNIQUE (
        "Title"
    )
);

CREATE TABLE "Employee" (
    "Emp_No" int   NOT NULL,
    "Emp_title_id" varchar(10)   NOT NULL,
    "Birth_Date" Date   NOT NULL,
    "First_Name" varchar(50)   NOT NULL,
    "Last_Name" varchar(50)   NOT NULL,
    "Sex" varchar(1)   NOT NULL,
    "Hire_Date" Date   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "Emp_No"
     )
);

CREATE TABLE "Departments" (
    "Dept_No" varchar(10)   NOT NULL,
    "Dept_Name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_No"
     ),
    CONSTRAINT "uc_Departments_Dept_Name" UNIQUE (
        "Dept_Name"
    )
);

CREATE TABLE "Salaries" (
    "Emp_No" int   NOT NULL,
    "Salary" int   NOT NULL
);

CREATE TABLE "Dept_Emp" (
    "Emp_No" int   NOT NULL,
    "Dept_No" varchar(10)   NOT NULL
);

CREATE TABLE "Dept_Manager" (
    "Dept_No" varchar(10)   NOT NULL,
	"Emp_No" int   NOT NULL
);

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_Emp_title_id" FOREIGN KEY("Emp_title_id")
REFERENCES "Titles" ("Title_Id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employee" ("Emp_No");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employee" ("Emp_No");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Departments" ("Dept_No");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employee" ("Emp_No");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Departments" ("Dept_No");

CREATE INDEX "idx_Employee_First_Name"
ON "Employee" ("First_Name");

CREATE INDEX "idx_Employee_Last_Name"
ON "Employee" ("Last_Name");

