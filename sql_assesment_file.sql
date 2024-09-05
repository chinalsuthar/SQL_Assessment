create database assesment;

use assesment;

create table worker(workerID INT,
first_name VARCHAR(30),
last_name VARCHAR(30),
salary INT,
joining_date DATE,
department VARCHAR(30));

INSERT INTO worker(workerID,first_name,last_name,salary,joining_date,department)VALUES
(1,'monica','arora',100000,'2014-02-20','HR'),
(2,'niharika','verma',80000,'2014-06-11','ADMIN'),
(3,'vishal','singhal',300000,'2014-02-20','HR'),
(4,'amitabh','singh',500000,'2014-02-20','ADMIN'),
(5,'vivek','bhati',500000,'2014-06-11','ADMIN'),
(6,'vipul','diwan',200000,'2014-06-11','ACCOUNT'),
(7,'satish','kumar',75000,'2014-01-20','ACCOUNT'),
(8,'geetika','chauhan',90000,'2014-04-11','ADMIN');

-- Q1)Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. --
select * from worker order by first_name ASC , department DESC;

-- Q2)Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table?--
select * from worker where first_name IN('vipul','satish');

-- Q3)Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets?--
select * from worker where first_name LIKE '_____h';

-- Q4)Write an SQL query to print details of the Workers whose SALARY lies between 1. --
select * from worker where salary>1;

-- Q5)Write an SQL query to fetch duplicate records having matching data in some fields of a table. --


-- Q6)Write an SQL query to show the top 6 records of a table. --
select * from worker limit 6;

-- Q7)Write an SQL query to fetch the departments that have less than five people in them--
select department, count(*) as no_ofworker from worker group by department having count(*)<5;

-- Q8)Write an SQL query to show all departments along with the number of people in there?--
select department, count(*) as no_ofpeople from worker group by department having count(*); 

-- Q9)Write an SQL query to print the name of employees having the highest salary in each department?--
select first_name,last_name,department,salary from worker;

CREATE TABLE STUDENT(STDID INT,
STDNAME VARCHAR(40),
SEX VARCHAR(10),
PERCENTAGE  INT,
CLASS INT,
SEC VARCHAR(10),
STREAM VARCHAR(40),
DOB DATE); 

INSERT INTO STUDENT(STDID,STDNAME,SEX,PERCENTAGE,CLASS,SEC,STREAM,DOB)
VALUES
(1001,'SUREKHA JOSHI','FEMALE',82,12,'A','SCIENCE','1998-03-08'),
(1002,'MAAHI AGARWAL','FEMALE',56,11,'C','COMMERCE','2008-11-23'),
(1003,'SANAM VERMA','MALE',59,11,'C','COMMERCE','2006-06-29'),
(1004,'RONIT KUMAR','MALE',63,11,'C','COMMERCE','1997-11-05'),
(1005,'DIPESH PULKIT','MALE',78,11,'B','SCIENCE','2003-09-14'),
(1006,'JAHANVI PURI','FEMALE',60,11,'B','COMMERCE','2008-07-11'),
(1007,'SANAM KUMAR','MALE',23,12,'F','COMMERCE','1998-03-08'),
(1008,'SAHIL SARAS','MALE',56,11,'C','COMMERCE','2008-07-11'),
(1009,'AKSHRA AGRAWAL','FEMALE',72,12,'B','COMMERCE','1996-01-10'),
(1010,'STUTI MISHRA','FEMALE',39,11,'F','SCIENCE','2008-11-23'),
(1011,'HARSH AGRAWAL','MALE',42,11,'C','SCIENCE','1998-03-08'),
(1012,'NIKUNJ AGRAWAL','MALE',49,12,'C','COMMERCE','1998-06-28'),
(1013,'AKRITI SAXSENA','FEMALE',89,12,'A','SCIENCE','2008-11-23'),
(1014,'TANI RASTOGI','FEMALE',82,12,'A','SCIENCE','2008-11-23');

--  1)To display all the records form STUDENT table.--
SELECT * FROM STUDENT;

-- 2) To display any name and date of birth from the table STUDENT--
SELECT STDNAME,DOB FROM STUDENT;

-- 3). To display all students record where percentage is greater of equal to 80 FROM student table. --
SELECT * FROM student WHERE PERCENTAGE >= 80;

-- 4) To display student name, stream and percentage where percentage of student is more than 80 --
SELECT STDNAME,STREAM,PERCENTAGE FROM STUDENT WHERE PERCENTAGE > 80;

-- 5) To display all records of science students whose percentage is more than 75 form student table. --
SELECT * FROM STUDENT WHERE STREAM="SCIENCE" AND PERCENTAGE > 75; 