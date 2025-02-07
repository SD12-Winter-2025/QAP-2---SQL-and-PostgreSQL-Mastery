-- Retrieve the full names of all students enrolled in “Physics 101"
-- Two methods given, one in step by step, the other simplified


-- 1. Steps
-- Step 1: Select students enrolled in "Physics 101"
WITH physics_students AS (
    SELECT enrollments.student_id
    FROM enrollments
    JOIN courses ON enrollments.course_id = courses.id
    WHERE courses.course_name = 'Physics 101'
),

-- Step 2: Get full names of these students
student_full_names AS (
    SELECT students.id, CONCAT(students.first_name, ' ', students.last_name) AS full_name
    FROM students
    JOIN physics_students ON students.id = physics_students.student_id
)

-- Final Step: Retrieve the full names of all students enrolled in "Physics 101"
SELECT full_name
FROM student_full_names;




--2. Simplified 
-- Retrieve the full names of all students enrolled in “Physics 101”
SELECT CONCAT(students.first_name, ' ', students.last_name) AS full_name
FROM students
JOIN enrollments ON students.id = enrollments.student_id
JOIN courses ON enrollments.course_id = courses.id
WHERE courses.course_name = 'Physics 101';
