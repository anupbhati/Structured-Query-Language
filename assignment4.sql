
CREATE DATABASE IF NOT EXISTS EmployeeManagement;
USE EmployeeManagement;

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    dept_id INT
);

INSERT INTO Departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Sales'),
(4, 'Finance'),
(5, 'Marketing');

INSERT INTO Employees VALUES
(101, 'John', 30, 60000, 2),
(102, 'Alice', 28, 55000, 3),
(103, 'Bob', 35, 70000, 1),
(104, 'Emma', 26, 48000, 3),
(105, 'David', 40, 80000, 4),
(106, 'Chris', 29, 52000, 6);

SELECT emp_name, salary
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

SELECT emp_name
FROM Employees
WHERE dept_id = (
    SELECT dept_id FROM Employees WHERE emp_name = 'John'
);

SELECT emp_name
FROM Employees
WHERE dept_id NOT IN (
    SELECT dept_id FROM Departments
);

SELECT MAX(salary) AS Second_Highest_Salary
FROM Employees
WHERE salary < (SELECT MAX(salary) FROM Employees);


SELECT emp_name, age
FROM Employees
WHERE age > ANY (
    SELECT age
    FROM Employees
    WHERE dept_id = (
        SELECT dept_id FROM Departments WHERE dept_name = 'Sales'
    )
);
