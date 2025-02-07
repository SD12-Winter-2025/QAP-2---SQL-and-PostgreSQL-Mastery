-- Retrieve a list of all courses along with the professor’s full name who teaches each course.



-- 1. Step by Step
-- Step 1: Select all courses with their professor IDs
WITH course_professors AS (
    SELECT id AS course_id, course_name, professor_id
    FROM courses
),

-- Step 2: Get the full names of professors
professor_full_names AS (
    SELECT id AS professor_id, CONCAT(first_name, ' ', last_name) AS full_name
    FROM professors
)

-- Final Step: Join the courses with the professors' full names
SELECT course_professors.course_name, professor_full_names.full_name AS professor_full_name
FROM course_professors
JOIN professor_full_names ON course_professors.professor_id = professor_full_names.professor_id;







--2. Simplified
SELECT courses.course_name, CONCAT(professors.first_name, ' ', professors.last_name) AS professor_full_name
FROM courses
JOIN professors ON courses.professor_id = professors.id;