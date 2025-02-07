-- Insert data into the students table
INSERT INTO students (first_name, last_name, email, school_enrollment_date) VALUES
('John', 'Doe', 'john.doe@example.com', '2023-01-15'),
('Jane', 'Smith', 'jane.smith@example.com', '2023-02-20'),
('Alice', 'Johnson', 'alice.johnson@example.com', '2023-03-10'),
('Bob', 'Brown', 'bob.brown@example.com', '2023-04-05'),
('Charlie', 'Davis', 'charlie.davis@example.com', '2023-05-25');

-- Insert data into the professors table
INSERT INTO professors (first_name, last_name, department) VALUES
('Dr. Victor', 'Vector', 'Physics'),
('Dr. Michael', 'Sine', 'Mathematics'),
('Dr. Sarah', 'Byte', 'Computer Science'),
('Dr. David', 'Flask', 'Chemistry');

-- Insert data into the courses table
INSERT INTO courses (course_name, course_description, professor_id) VALUES
('Physics 101', 'Introduction to Physics', 1),
('Calculus I', 'Fundamentals of Calculus', 2),
('Computer Science 101', 'Introduction to Computer Science', 3);
('Chemistty 101', 'Introduction to Chemistry', 4);

-- Insert data into the enrollments table
INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2023-09-01'),
(2, 1, '2023-09-02'),
(3, 2, '2023-09-03'),
(4, 3, '2023-09-04'),
(5, 3, '2023-09-05');