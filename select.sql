-- Active: 1708921245946@@127.0.0.1@5432@ph
--create  
CREATE TABLE students (
student_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL, age INT,
grade CHAR(2),
course VARCHAR(50),
email VARCHAR(100),
dob DATE,blood_group VARCHAR(5),country VARCHAR(50));

-- insert data
INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('TAva', 'Yaylor', 21, 'B+', 'Psychology', '2001-06-28', 'O+', 'France');


SELECT * FROM students ;
SELECT first_name,email,age from students;
SELECT email as "student Email", age from students

SELECT * FROM students ORDER BY first_name  ASC

SELECT * FROM students ORDER BY age  DESC 

SELECT DISTINCT country from  students

SELECT DISTINCT blood_group from  students

--- data filtering and | Or , single | double
SELECT * FROM students
WHERE country = 'USA';
SELECT * FROM students
WHERE country = 'USA' AND course = 'Mathematics';

SELECT * FROM students
WHERE country = 'USA' OR country = 'UK' ;
SELECT * FROM students
WHERE (country = 'USA' OR country = 'UK') AND age>=20  ;
-- <> means not equal to 
SELECT * FROM students
WHERE country <> 'UK';

--------------------
SELECT concat (first_name,' ',last_name)from students

SELECT avg(age) FROM students;

SELECT count(*) FROM students 


---------------null
SELECT * FROM students
   WHERE email IS NOT NULL;

--    COALESCE--- je je null sekhne value boshano 

SELECT * FROM students

SELECT COALESCE(email,'email not found') FROM students

SELECT COALESCE(email,'email not found')as email FROM students

SELECT * FROM students WHERE country IN('UK','USA')

SELECT * FROM students WHERE country NOT IN('UK','USA')

----------range-- (BETWEEN)

SELECT * FROM students  
    WHERE age BETWEEN 19 and 20

SELECT * FROM students  
    WHERE dob BETWEEN '2001-09-25'AND '2002-09-25' ORDER BY dob


    -------Like and ILIKE ADD ( at the end ar jnne % )
    SELECT * FROM students
     WHERE first_name LIKE '%n'

    SELECT * FROM students
     WHERE first_name LIKE 'E%'

    SELECT * FROM students
     WHERE first_name ILIKE 'j%'

     ----------limit offset pagination ADD
     SELECT * FROM students  
    WHERE age BETWEEN 19 and 20 LIMIT 2

    SELECT * FROM students LIMIT 5  OFFSET 5*0

    SELECT * FROM students LIMIT 5  OFFSET 5*1

    SELECT * FROM students LIMIT 5  OFFSET 5*2

    SELECT * FROM students LIMIT 5  OFFSET 5*3


    ----------Delete
    DELETE FROM students 
     WHERE grade = 'C+' 


    --  update    
   UPDATE students
   set email = 'setmarka@mail.com'
   WHERE student_id = 20
   