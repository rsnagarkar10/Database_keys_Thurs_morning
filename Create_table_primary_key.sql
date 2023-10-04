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


DROP TABLE IF EXISTS Class;

DROP TABLE IF EXISTS Teacher;

CREATE TABLE Teacher (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT
);

INSERT INTO Teacher (teacher_id,first_name, last_name, age)
VALUES
    (1,'John', 'Doe', 35),
    (2,'Jane', 'Smith', 28),
    (3,'Michael', 'Johnson', 42),
    (4,'Emily', 'Davis', 30),
	(5,'Sarah', 'Wilson', 29),
    (6,'James', 'Anderson', 40),
    (7,'Laura', 'Lee', 27),
    (8,'David', 'Brown', 38);
	
SELECT * FROM Teacher;

CREATE TABLE Class (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(100),
    room_number VARCHAR(20),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id)
);

INSERT INTO Class (class_id,class_name, room_number, teacher_id)
VALUES
    (1,'Linear Regression', 'Room 1A', 3),
    (2,'Time Series', 'Room 2C', 2),
    (3,'Data Acquisition', 'Room 4B', 8),
    (4,'Data Comms', 'Room 2A', 4),
    (5,'Computation for Analytics', 'Room 3B', 1);

SELECT * FROM Class;

INSERT INTO Class (class_id,class_name, room_number, teacher_id)
VALUES
(6,'EDA', 'Room 1B', 23);

INSERT INTO Class (class_id,class_name, room_number, teacher_id)
VALUES
(6,'EDA', 'Room 1B', 7);

SELECT * FROM Class;


SELECT c.class_id,c.class_name,c.room_number,c.teacher_id,t.first_name, t.last_name
FROM Class as C
JOIN Teacher as T ON t.teacher_id = c.teacher_id;

	
