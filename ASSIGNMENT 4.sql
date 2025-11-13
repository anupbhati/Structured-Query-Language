
DROP DATABASE IF EXISTS AppleCompanyDB;
CREATE DATABASE AppleCompanyDB;
USE AppleCompanyDB;

DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    launch_year YEAR,
    price DECIMAL(10,2),
    stock INT
);


INSERT INTO Products (product_name, category, launch_year, price, stock) VALUES
('iPhone 15 Pro', 'Smartphone', 2023, 1199.00, 5000),
('MacBook Air M3', 'Laptop', 2024, 1499.00, 2000),
('iPad Pro 12.9"', 'Tablet', 2022, 1099.00, 3000),
('Apple Watch Ultra 2', 'Wearable', 2023, 799.00, 2500),
('AirPods Pro 2', 'Audio', 2022, 249.00, 4000);
SELECT * FROM Products

DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50),
    department VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10,2)
);

INSERT INTO Employees (first_name, last_name, position, department, hire_date, salary) VALUES
('Tim', 'Cook', 'CEO', 'Executive', '2011-08-24', 3500000.00),
('Luca', 'Maestri', 'CFO', 'Finance', '2014-03-01', 2000000.00),
('Craig', 'Federighi', 'SVP Software Engineering', 'Engineering', '2012-06-01', 2500000.00),
('Katherine', 'Adams', 'General Counsel', 'Legal', '2017-10-06', 1800000.00),
('Deirdre', 'O’Brien', 'SVP Retail', 'Retail', '2019-02-05', 1700000.00);
select * from Employees
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    country VARCHAR(50),
    join_date DATE
);

INSERT INTO Customers (first_name, last_name, email, country, join_date) VALUES
('John', 'Smith', 'john.smith@email.com', 'USA', '2023-05-15'),
('Emily', 'Chen', 'emily.chen@email.com', 'China', '2023-07-20'),
('Carlos', 'Martinez', 'carlos.martinez@email.com', 'Mexico', '2022-11-30'),
('Sara', 'Khan', 'sara.khan@email.com', 'UAE', '2023-01-12'),
('Liam', 'Brown', 'liam.brown@email.com', 'UK', '2024-02-25');
select * from Customers

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (customer_id, order_date, total_amount, status) VALUES
(1, '2024-05-20', 2499.00, 'Delivered'),
(2, '2024-06-15', 1199.00, 'Processing'),
(3, '2024-07-01', 1499.00, 'Shipped'),
(4, '2024-08-10', 799.00, 'Delivered'),
(5, '2024-09-05', 249.00, 'Delivered');
select * from Orders

DROP TABLE IF EXISTS OrderDetails;
CREATE TABLE OrderDetails (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO OrderDetails (order_id, product_id, quantity, price) VALUES
(1, 2, 1, 1499.00),
(1, 5, 1, 249.00),
(2, 1, 1, 1199.00),
(3, 2, 1, 1499.00),
(4, 4, 1, 799.00),
(5, 5, 1, 249.00);
SELECT * FROM Orderdetails