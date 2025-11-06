# QUESTION 9

DROP TABLE IF EXISTS BankAccount;
CREATE TABLE BankAccount (
    acc_id INT AUTO_INCREMENT PRIMARY KEY,
    holder_name VARCHAR(50) NOT NULL,
    branch VARCHAR(30),
    balance INT DEFAULT 1000 CHECK (balance >= 1000)
);
INSERT INTO BankAccount (holder_name, branch, balance) VALUES 
('Suresh Menon', 'Mumbai', 55000),
('Neha Reddy', 'Bangalore', 18000),
('Rajesh Verma', 'Delhi', DEFAULT),
('Anjali Pande', 'Delhi', 32000);
SELECT * FROM BankAccount
WHERE balance > 20000;
SELECT * FROM BankAccount
WHERE branch = 'Delhi' OR balance < 5000;
SELECT DISTINCT branch FROM BankAccount;
SELECT * FROM BankAccount
ORDER BY balance DESC
LIMIT 2;
SELECT * FROM BankAccount
WHERE balance BETWEEN 10000 AND 30000
ORDER BY balance ASC;
SELECT branch, COUNT(*) AS account_count
FROM BankAccount
GROUP BY branch;
SELECT * FROM BankAccount
ORDER BY balance ASC
LIMIT 1;
