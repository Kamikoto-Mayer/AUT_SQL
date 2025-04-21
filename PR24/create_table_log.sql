CREATE TABLE student_logs (
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    action_type VARCHAR(10),
    studentid INT,
    lastname VARCHAR(50),
    firstname VARCHAR(50),
    birthdate DATE
);
