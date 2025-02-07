-- Retrieve all courses that have students enrolled in them
-- Two methods given, one in step by step, the other simplified

-- 1. Step by Step
-- Step 1: Select all enrollments with course IDs
WITH enrolled_courses AS (
    SELECT DISTINCT course_id
    FROM enrollments
),

-- Step 2: Get the course names for these enrollments
course_names AS (
    SELECT courses.id, courses.course_name
    FROM courses
    JOIN enrolled_courses ON courses.id = enrolled_courses.course_id
)

-- Final Step: Retrieve the distinct course names
SELECT DISTINCT course_name
FROM course_names;



--2. Simplified
SELECT DISTINCT courses.course_name
FROM courses
JOIN enrollments ON courses.id = enrollments.course_id;