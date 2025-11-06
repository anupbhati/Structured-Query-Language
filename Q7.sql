# question 7
DROP TABLE IF EXISTS Cinema;
CREATE TABLE Cinema (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_name VARCHAR(50) UNIQUE NOT NULL,
    language VARCHAR(20),
    rating INT CHECK (rating <= 10)
);
INSERT INTO Cinema (movie_name, language, rating) VALUES
('The Great Escape', 'English', 9),
('Bahubali', 'Telugu', 8),
('Sholay', 'Hindi', 5),
('Lagaan', 'Hindi', NULL);

SELECT * FROM Cinema
WHERE rating > 7;

SELECT * FROM Cinema
WHERE language = 'Hindi' OR rating < 5;

SELECT DISTINCT language FROM Cinema;

SELECT * FROM Cinema
ORDER BY rating DESC
LIMIT 2;

SELECT * FROM Cinema
WHERE rating BETWEEN 5 AND 9
ORDER BY rating;

SELECT language, COUNT(*) AS movie_count
FROM Cinema
GROUP BY language;

SELECT * FROM Cinema
WHERE rating = (SELECT MAX(rating) FROM Cinema);
