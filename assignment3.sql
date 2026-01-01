
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) CHECK (salary > 0),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

INSERT INTO Departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO Employees VALUES
(101, 'Rahul', 50000, 1),
(102, 'Anita', 60000, 2),
(103, 'Karan', 45000, 1),
(104, 'Priya', 70000, 3);

SELECT * FROM Employees;

SELECT emp_name, salary
FROM Employees
WHERE salary > 50000;

SELECT emp_name, salary
FROM Employees
ORDER BY salary DESC;

UPDATE Employees
SET salary = 55000
WHERE emp_id = 101;

DELETE FROM Employees
WHERE emp_id = 103;

SELECT emp_name, salary
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

SELECT e.emp_name, d.dept_name
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id;
