-- Active: 1708921245946@@127.0.0.1@5432@ph
SELECT * FROM students ;

--add new column 
ALTER TABLE test 
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

--rename 
ALTER TABLE test
   RENAME COLUMN age to user_age;

--drop column 
ALTER TABLE test
DROP COLUMN email

--make data type varchar 50 to 20 change 
ALTER Table test 
alter COLUMN user_name TYPE VARCHAR(20)

ALTER Table test 
ALTER COLUMN roll set NOT NULL;

ALTER Table test 
ALTER COLUMN roll drop  NULL;

INSERT INTO test VALUES(5,'test1',20,10,'added@gmail.com')

-------unique (constraint , 2(make primary key))
alter Table test 
 ADD constraint unique_age UNIQUE(age);

 -- add primary key for (id )
alter Table test 
 ADD constraint pk PRIMARY KEY(id)


 --drop a database's Table   
 TRUNCATE TABLE test;