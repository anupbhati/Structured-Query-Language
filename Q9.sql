#QUESTION 9

DROP TABLE IF EXISTS Shop;
CREATE TABLE Shop (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(50) NOT NULL UNIQUE,
    supplier VARCHAR(40),
    price INT DEFAULT 20000 CHECK (price <= 20000)
);


INSERT INTO Shop (item_name, supplier, price) VALUES ('Laptop', 'XYZ Ltd', 18000);
INSERT INTO Shop (item_name, supplier, price) VALUES ('Smartphone', 'ABC Ltd', 15000);
INSERT INTO Shop (item_name, supplier) VALUES ('Headphones', 'ABC Ltd');  

SELECT * FROM Shop WHERE price > 15000;

SELECT * FROM Shop WHERE supplier = 'ABC Ltd' OR price < 5000;

SELECT DISTINCT supplier FROM Shop;

SELECT * FROM Shop ORDER BY price DESC LIMIT 1;

SELECT * FROM Shop WHERE price BETWEEN 7000 AND 16000 ORDER BY price;
SELECT supplier, COUNT(*) AS item_count FROM Shop GROUP BY supplier;

SELECT * FROM Shop WHERE price = (SELECT MIN(price) FROM Shop);
