-- Active: 1708921245946@@127.0.0.1@5432@ph
SELECT * FROM students;
SELECT country ,count(*),avg(age) from students
 GROUP BY country;

SELECT country ,count(*),avg(age) from students
 GROUP BY country
 HAVING avg(age)>20


SELECT extract (year FROM dob)as birth_year,count(*) 
 FROM students
GROUP BY birth_year


