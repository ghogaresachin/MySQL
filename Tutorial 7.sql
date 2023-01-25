## SQL Joins
/* 
1. Inner Join : Return records that existing in both tables, excluding unmatched records
2. Left Join : Return all record from left table, and any matching records from right table.
3. Right Join : Return all recosalaryrd from right table, and any matching record from left table.
4. Full Join : Return all record from both tables, including non matching records.
5. Natural Join
6. Cross join : Cross join takes values from table first and take all combination of values from second table 
7. Union: Return all records from table, with all data from another table appended to the end.
*/
use sachin;
select * from salary;
select * from wineqt;
select * from wineqt where density=0.9978;
use customer;
drop table student;
create table student(
studentid int,
first_name varchar(25),
last_name varchar(25),
age int
);
select * from student;
insert into student values
(1,'Sachin','Ghogare',22),
(2,'Chetan','Salunke',22),
(3,'Pradip','Fulpagare',22),
(4,'Nikita','Patil',22),
(5,'Komal','Nikam',22);

drop table department;
create table department(
studentid int,
department_name varchar(25)
);
insert into department values
(1,'Statistics'),
(2,'Mathematics'),
(3,'Actuarial');
select * from department;

drop table score;
create table Score(studentid int, marks int);
insert into Score values
(1,25),(2,27),(3,28),(4,29),(5,30),(6,31);
select * from Score;

## Inner join
select * from student inner join department 
on student.studentid=department.studentid;

select student.first_name,student.last_name,student.age,department.department_name
from student inner join department 
on student.studentid=department.studentid;

## Left Join
select student.first_name,student.last_name,student.age,department.department_name
from student left join department 
on student.studentid=department.studentid;

## Right join
select student.first_name,student.last_name,student.age,department.department_name
from student right join department 
on student.studentid=department.studentid;

select student.first_name,student.last_name,student.age,Score.marks
from student right join score
on student.studentid=score.studentid;

## Full outer join
select student.first_name,student.last_name,student.age,department.department_name
from student left join department 
on student.studentid=department.studentid
union
select student.first_name,student.last_name,student.age,department.department_name
from student right join department 
on student.studentid=department.studentid;

select student.first_name,student.last_name,score.marks
from student left join score
on student.studentid=score.studentid
union
select student.first_name,student.last_name,score.marks
from student right join score
on student.studentid=score.studentid;


## Cross join
select student.first_name,student.last_name,student.age,department.department_name
from student cross join department;

create database Sachin;
show databases;
use world;
show tables;
select * from country;
select * from city;
select * from countrylanguage;
select * from country c join countrylanguage cl;
select * from country c join city c1;
select * from country c join countrylanguage cl
on c.Code=cl.Countrycode;
select c.code,c.Region,cl.IsOfficial,cl.percentage from country c join countrylanguage cl
on c.Code=cl.Countrycode; 
select count(*) from country;         #counts the no of rows of table.
select count(*) from countrylanguage; 
select * from country,countrylanguage;


show databases;
use chetan;
show tables;
select * from iris;
select * from iris where sepallengthcm=3.5;
use world;
select * from city;
select * from country;
select ci.name,ci.population,ci.countrycode,co.lifeexpectancy,co.region from city ci,country co;
