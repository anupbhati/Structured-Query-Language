
#QUESTION 4

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    product VARCHAR(40),
    amount INT DEFAULT 20000 CHECK (amount <= 50000)
);

INSERT INTO Orders (customer_name, product, amount) VALUES
('Jane Doe', 'Laptop', 45000),
('John Smith', 'Headphones', 2500),
('Sam Wilson', 'Mouse', 1000),
('Kelly Jones', 'Monitor', DEFAULT);

SELECT * FROM Orders
WHERE amount > 10000;

SELECT * FROM Orders
WHERE product = 'Laptop' OR amount < 5000;

SELECT DISTINCT product FROM Orders;

SELECT * FROM Orders
ORDER BY amount DESC
LIMIT 2;

SELECT * FROM Orders
WHERE amount BETWEEN 8000 AND 30000
ORDER BY amount;

SELECT product, COUNT(*) AS order_count
FROM Orders
GROUP BY product;

SELECT * FROM Orders
WHERE amount = (SELECT MAX(amount) FROM Orders);
