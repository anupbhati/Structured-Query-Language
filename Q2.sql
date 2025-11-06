# QUESTION 2
DROP TABLE IF EXISTS Course;
CREATE TABLE Course (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) UNIQUE,
    duration INT NOT NULL,
    fees INT DEFAULT 10000 CHECK (fees <= 100000)
);
INSERT INTO Course (course_name, duration, fees) VALUES 
('Data Science', 12, 85000),
('Web Development', 6, 45000),
('Database Design', 4, 1000);
INSERT INTO Course (course_name, duration) VALUES ('Cloud Computing', 15);
SELECT * FROM Course
WHERE duration > 6;
SELECT * FROM Course
WHERE fees < 50000 OR duration > 12;
SELECT DISTINCT duration FROM Course;
SELECT * FROM Course
ORDER BY fees DESC
LIMIT 1;
SELECT * FROM Course
WHERE duration BETWEEN 6 AND 12
ORDER BY fees;
SELECT duration, COUNT(*) AS course_count
FROM Course
GROUP BY duration;
SELECT * FROM Course
ORDER BY fees ASC
LIMIT 1;
