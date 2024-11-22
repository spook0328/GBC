--1. Concatenate Course Name and Semester:
SELECT concat(course_name, '-', semester)
FROM courses;

--2. Find Courses with Labs on Fridays:
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time like '%Friday%'
OR lab_time LIKE '%Fri%';

--3. Upcoming Assignments
SELECT * 
FROM assignments
WHERE due_date > '2024-11-22'
ORDER by due_date;

--4. Count Assignments by Status:
SELECT status, count(*) AS assignments_count
FROM assignments
GROUP by status;

--5. Longest Course Name
SELECT course_name, length(course_name) AS name_length
From courses
ORDER BY length(name_length) DESC
LIMIT 1;

--6. Uppercase Course Names:
SELECT course_name, UPPER(course_name) AS name_upper 
FROM courses;

--7. Assignments Due in September
SELECT *
FROM assignments
WHERE due_date like '%-09-%'; 

--8.Assignments with Missing Due Dates:
--I think this one is the most difficult and fun.
SELECT due_date
FROM assignments
WHERE due_date IS NULL;
