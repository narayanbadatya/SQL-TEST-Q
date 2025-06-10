-- Creating 'fokus' database and employee table
CREATE DATABASE fokus;
USE fokus;

CREATE TABLE employee (
    id INT,
    idname VARCHAR(50),
    salary INT
);

INSERT INTO employee (id, idname, salary) VALUES (1, "ashish", 400);
SELECT * FROM employee;
SHOW TABLES;

-- Creating 'xyz_company' database and employee table
CREATE DATABASE xyz_company;
USE xyz_company;

CREATE TABLE em (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

INSERT INTO em (id, name, salary) VALUES
(2, "ashish", 34000), 
(3, "kiran", 39000);

SELECT * FROM em;

-- Creating table with default salary value
CREATE TABLE emp (
    id INT, 
    salary INT DEFAULT 35000
);

INSERT INTO emp (id) VALUES (101);
SELECT * FROM emp;

-- Creating 'city' table with constraints
CREATE TABLE city (
    id INT PRIMARY KEY,
    city VARCHAR(50),
    age INT,
    CONSTRAINT age_check CHECK (age >= 18 AND city = "delhi")
);

CREATE TABLE newTab (
    age INT CHECK (age >= 18)
);

-- Creating 'college1' database and student table
CREATE DATABASE college1;
USE college1;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student (rollno, name, marks, grade, city) VALUES
(101, "rahul", 78, "c", "delhi"),
(102, "narayan", 78, "c", "damanjodi"),
(103, "subashis", 78, "c", "damanjodi"),
(104, "arun", 78, "c", "taratrini");

-- Updating marks using CASE statement
UPDATE student 
SET marks = 
    CASE 
        WHEN rollno = 101 THEN 94
        WHEN rollno = 102 THEN 39
        WHEN rollno = 103 THEN 78
        WHEN rollno = 104 THEN 69
    END
WHERE rollno IN (101, 102, 103, 104);

-- Retrieving students with marks greater than 60
SELECT * FROM student WHERE marks > 60;

-- Rolling back last transaction
ROLLBACK;

-- Retrieving city names and distinct grades
SELECT city FROM student;
SELECT DISTINCT grade FROM student;

-- Filtering records
SELECT * FROM student WHERE marks > 60;
SELECT * FROM student WHERE marks > 60 AND city = "delhi";
SELECT * FROM student WHERE marks BETWEEN 60 AND 90;
SELECT * FROM student WHERE city IN ("damanjodi");
SELECT * FROM student WHERE city NOT IN ("damanjodi");

-- Aggregation queries
SELECT MAX(marks) FROM student;
SELECT COUNT(rollno) FROM student;
SELECT city, COUNT(rollno) FROM student GROUP BY city;
SELECT city, name, COUNT(rollno) FROM student GROUP BY city, name;

-- Sorting and limiting queries
SELECT * FROM student LIMIT 2;
SELECT * FROM student WHERE marks > 49 LIMIT 2;
SELECT * FROM student ORDER BY marks DESC;
SELECT * FROM student ORDER BY marks ASC;

-- Updating student marks
UPDATE student SET marks = 89 WHERE rollno = 102;
SELECT * FROM student ORDER BY marks DESC LIMIT 3;
