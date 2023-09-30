-- create database ORG;
use org;
CREATE TABLE Worker 
(WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25));

INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,
DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

#Question 1:
select First_name as Worker_name 
from worker;

#Question 2:
select distinct department
from worker;

#Question 3:
select substring(first_name,1,3) as nam
from worker;


#Question 4:
select distinct department,
length(department) 
from worker;

#Question 5:
select *
from worker
order by  First_name asc, department desc;

#Question 6:
select * 
from worker
where department = 'Admin';

#Question 7:
select * 
from worker
where salary between 100000 and 500000;

#Question 8:
select concat(first_name,' ',last_name) as worker
from worker
where salary >=50000 and salary <=100000;

#Question 9:
select * 
from worker
where mod(worker_id,2) = 0;

#Question 10:
select *
from worker
where year(joining_date) = 2014
and month(joining_date) = 2;
