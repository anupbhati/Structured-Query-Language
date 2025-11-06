# QUESTION 3
DROP TABLE IF EXISTS Hospital;
CREATE TABLE Hospital (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_name VARCHAR(50) NOT NULL,
    disease VARCHAR(30),
    bill_amount INT DEFAULT 20000 CHECK (bill_amount <= 200000)
);
INSERT INTO Hospital (patient_name, disease, bill_amount) VALUES
('Maya Sharma', 'Flu', 75000),
('Ravi Varma', 'Appendicitis', 120000),
('Priya Singh', 'Fever', 5000),
('Amit Kumar', 'Cold', DEFAULT);
SELECT * FROM Hospital
WHERE bill_amount > 50000;
SELECT * FROM Hospital
WHERE disease = 'Flu' OR bill_amount < 10000;
SELECT DISTINCT disease FROM Hospital;
SELECT * FROM Hospital
ORDER BY bill_amount DESC
LIMIT 2;
SELECT * FROM Hospital
WHERE bill_amount BETWEEN 20000 AND 80000
ORDER BY bill_amount ASC;
SELECT disease, COUNT(*) AS patient_count
FROM Hospital
GROUP BY disease;
SELECT * FROM Hospital
ORDER BY bill_amount ASC
LIMIT 1;
