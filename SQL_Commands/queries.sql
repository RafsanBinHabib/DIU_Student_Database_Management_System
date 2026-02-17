-- Query 1: Find students who registered for more than two courses.
SELECT s.sid, s.name
FROM Student s
INNER JOIN Enrolls e
ON s.sid=e.student_id
GROUP BY s.sid
HAVING COUNT(e.course_id) > 2;


-- Query 2: Find teachers whose email contains 'diu' and phone starts with '017'.
SELECT Name, Email, Phone
FROM Teacher
WHERE Email LIKE '%diu%' AND Phone LIKE '017%';


-- Query 3: Find students from 'Dhaka' with CGPA > 3.65.
SELECT Name, CGPA
FROM Student
WHERE City = 'Dhaka' AND CGPA > 3.65;


-- Query 4: Find students who are NOT from 'Dhaka' or 'Chittagong'.
SELECT Name, City, District
FROM Student
WHERE City NOT IN ('Dhaka', 'Chittagong');


-- Query 5: Find students taking courses CIS222, CIS223, or CIS224.
SELECT s.sid, s.name, e.course_id
FROM Student s
LEFT JOIN Enrolls e
ON s.sid = e.student_id
WHERE e.course_id IN ('CIS222', 'CIS223', 'CIS224');


-- Query 6: Find projects with 'Library' or 'AI' in the title.
SELECT * FROM Project WHERE Title LIKE '%Library%' OR Title LIKE '%AI%';
RAFSAN BIN HABIB
12


-- Query 7: Find students aged 20-24 with CGPA > 3.71.
SELECT Name, Age, CGPA
FROM Student
WHERE Age BETWEEN 20 AND 24 AND CGPA > 3.71;


-- Query 8: Find courses without students enrolled.
SELECT c.cid, c.cname
FROM COURSE c
LEFT JOIN ENROLLS e ON c.cid = e.course_id
WHERE e.student_id IS NULL;


-- Query 9: List courses with more than one student enrolled.
SELECT c.cid, c.cname
FROM COURSE c
JOIN ENROLLS e ON c.cid = e.course_id
GROUP BY c.cid, c.cname
HAVING COUNT(e.student_id) > 1;


-- Query 10: Find students supervised by a specific faculty (FacultyID = 7100028XX). [‘XX’ = Last two digits of your Student ID]
SELECT DISTINCT name
FROM student s
LEFT JOIN works_on w
ON s.sid=w.student_id
WHERE w.faculty_id='710002852';
