
CREATE TABLE "department" (
    "dept_no" VARCHAR(50)   NOT NULL,
    "dept_name" VARCHAR(50)   NOT NULL UNIQUE,
    PRIMARY KEY (
        "dept_no"
     )
);


CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(50)   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    PRIMARY KEY (
        "emp_no"
     ),
    FOREIGN KEY("dept_no") REFERENCES "department" ("dept_no")
);


CREATE TABLE "title" (
    "title_id" VARCHAR(50)   NOT NULL,
    "title" VARCHAR(50)   NOT NULL UNIQUE,
    PRIMARY KEY (
        "title_id"
     )
);


CREATE TABLE "employee" (
    "emp_no" INTEGER   NOT NULL,
    "emp_title_id" VARCHAR(50)   NOT NULL,
    "birth_DATE" DATE   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "sex" CHAR   NOT NULL,
    "hire_DATE" DATE   NOT NULL,
    PRIMARY KEY (
        "emp_no"
     ),
    FOREIGN KEY("emp_title_id") REFERENCES "title" ("title_id")
);


CREATE TABLE "salary" (
    "emp_no" INTEGER   NOT NULL,
    "salary" MONEY   NOT NULL,
    PRIMARY KEY (
        "emp_no"
     ),
    FOREIGN KEY("emp_no") REFERENCES "employee" ("emp_no")
);


CREATE TABLE "dept_emp" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR(50)   NOT NULL,
    PRIMARY KEY (
        "emp_no","dept_no"
     ),
     FOREIGN KEY("emp_no") REFERENCES "employee" ("emp_no"),
     FOREIGN KEY("dept_no") REFERENCES "department" ("dept_no")
);



