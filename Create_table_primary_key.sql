CREATE TABLE IF NOT EXISTS student (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    score INTEGER,
    grade CHAR(1)
);

COPY student(first_name, last_name, score, grade)
FROM '/Users/ranjeetnagarkar/Desktop/Communications_Analysis/student_scores.csv'
DELIMITER ','
CSV HEADER;


SELECT * FROM student;

-- ALTER TABLE student
-- ADD PRIMARY KEY (first_name);

-- DROP TABLE IF EXISTS student;
