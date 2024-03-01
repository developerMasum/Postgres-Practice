-- Active: 1708921245946@@127.0.0.1@5432@ph
SELECT now()

SELECT now()::date;
SELECT now()::time;
CREATE TABLE timeZ(ts TIMESTAMP without time zone ,tsz TIMESTAMP with time zone)

INSERT INTO  timeZ VALUES('2020-01-16 10:45:10','2020-01-16 10:45:10')

SELECT * FROM  timeZ

SELECT to_char(now(),'yyyy/mm/dd')

SELECT to_char(now(), 'month')

SELECT to_char(now(), 'DDD')

SELECT CURRENT_DATE - INTERVAL '1 year 10day'

SELECT age (CURRENT_DATE , '2001-02-16')


------------------ stduenbts

SELECT *, age(CURRENT_DATE ,dob) from students;