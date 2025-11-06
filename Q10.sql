# QUESTION 10

DROP TABLE IF EXISTS Flights;
CREATE TABLE Flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    airline VARCHAR(50) NOT NULL,
    source VARCHAR(30),
    destination VARCHAR(30),
    fare INT CHECK (fare <= 20000) DEFAULT 20000
);

INSERT INTO Flights (airline, source, destination, fare) VALUES
('Indigo', 'Delhi', 'Mumbai', 12000),
('Air India', 'Bangalore', 'Delhi', 18000),
('SpiceJet', 'Chennai', 'Kolkata', DEFAULT);

SELECT * FROM Flights
WHERE fare > 10000;
SELECT * FROM Flights
WHERE source = 'Delhi' OR fare < 5000;
SELECT DISTINCT airline FROM Flights;
SELECT * FROM Flights
ORDER BY fare DESC
LIMIT 2;
SELECT * FROM Flights
WHERE fare BETWEEN 8000 AND 15000
ORDER BY fare ASC;
SELECT source, COUNT(*) AS flight_count
FROM Flights
GROUP BY source;
SELECT * FROM Flights
WHERE fare = (SELECT MAX(fare) FROM Flights);
