-- Remove a student from one of their courses
DELETE FROM enrollments
WHERE student_id = 1 AND course_id = 1;