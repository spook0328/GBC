-- Jui Hsin Wong

-- Q1: List all the rectangles
SELECT * FROM rectangles
WHERE width = height;

-- Q2: How many rectangles are there?
-- A: "5"
SELECT COUNT(*) rectangles_count
FROM rectangles
WHERE width = height;

-- Q3: What color is the widest rectangle?
-- A: "#abcdef"
SELECT color FROM rectangles
WHERE width=(SELECT MAX(width) FROM rectangles);

--Q4: What color is the tallest rectangle?
-- A: "#ffffff"
SELECT color FROM rectangles
WHERE height=(SELECT MAX(height)FROM rectangles);

--Q5:List all rectangles that are wider than they are tall
SELECT * FROM rectangles
WHERE width > height;

--Q6:Calculate and select area of each rectangle
SELECT (width * height)AS area
FROM rectangles;

--Q7: What color is the largest rectangle?
SELECT (width * height)AS area
FROM rectangles
WHERE width * height = (SELECT MAX(width * height) FROM rectangles);

--Q8:What color is the rectangle that extends the most to the right?
--A"#abcdef"
SELECT color FROM rectangles
WHERE (width+x)=(SELECT MAX(width+x)FROM rectangles);

--Q9:Find rectangle(s) with NULL color
SELECT * FROM rectangles
WHERE color IS NULL;

--Q10: List all the different colors
SELECT color FROM rectangles
GROUP BY color;

--Q11: List all the different named colors
SELECT color FROM rectangles
WHERE color IS NOT NULL 
AND color NOT LIKE '#%'
GROUP BY color;

--Q12: List rectangle colors in upper case letters
SELECT UPPER(color) FROM rectangles
GROUP BY color;

--Q13:What is the course_id of the course with the longest name?
--A:"COMP3095"
SELECT course_id FROM courses
WHERE course_name = (SELECT MAX(course_name) FROM courses);

--Q14:How many assignments are there with due dates in 2024?
--A:"12"
SELECT  COUNT(*) due_date_assignments
FROM assignments
WHERE due_date BETWEEN '2024-01-01' AND '2024-12-31';

--Q15:Concatenate Course ID and name:
SELECT concat(course_id, ':', course_name)
FROM courses;

--Q16:List courses with Labs on Mondays:
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Monday%' 
OR lab_time LIKE '%Mon%';

--Q17:Past Assignments:
SELECT * FROM assignments
WHERE due_date < '2024-12-03'
ORDER BY due_date;

-- Jui Hsin Wong
-- I think this one is the most difficult and fun.
--Q18:How many assignments are there for each course:
--A""
SELECT title, COUNT(*) AS course_assignment
FROM assignments
GROUP BY title;
