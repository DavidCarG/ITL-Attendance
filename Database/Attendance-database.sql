CREATE DATABASE attendance_system;

CREATE TABLE students (
  student_id INT AUTO_INCREMENT PRIMARY KEY,
  student_name VARCHAR(255) NOT NULL,
  college_class VARCHAR(255)
);

CREATE TABLE sessions (
  session_id INT AUTO_INCREMENT PRIMARY KEY,
  session_name VARCHAR(255) NOT NULL,
  session_date DATE NOT NULL,
  session_time TIME NOT NULL,
  teacher_name VARCHAR(255) NOT NULL
);

CREATE TABLE attendance (
  attendance_id INT AUTO_INCREMENT PRIMARY KEY,
  session_id INT NOT NULL,
  student_id INT NOT NULL,
  attendance_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (session_id) REFERENCES sessions(session_id),
  FOREIGN KEY (student_id) REFERENCES students(student_id)
);