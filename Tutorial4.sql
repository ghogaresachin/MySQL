/* 4. Foreign Key  (Use to link the two tables together)
5. Check 
6. Default
7. Index
*/

create database practice;
show databases;


use practice;
drop table friends1;
create table friends1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
nom int not null
);
select * from friends1;
desc friends1;
 
alter table friends1
add constraint pk primary key(id ,age);

# drop primary key
alter table friends1
drop primary key;

# Foreign key
show databases;
use customer;
show tables;

drop table friends1;
create table friends1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id)
);
select * from friends1;
desc friends1;
drop table department;
create table department(
id int not null,
department_id int not null,
department_name varchar(25) not null,
primary key(department_id)
);
select * from department;
desc department;

alter table department
add foreign key(id) references friends1(id);
desc friends1;

drop table friends1;
drop table department;
#_______________________________________________________________

# Check Constraint

desc friends1;

insert into friends1 values(1,'Sachin','ghogare',22,60000);
drop table friends1;
create table friends1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id),
check(salary<50000)
);

select * from friends1;
insert into friends1 values(1,'Chetan','Salunke',22,40000);
select * from friends1;
 
 #_______________________________________________________________________

 #Default Constraint 
 drop table friends1;
 create table friends1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
city_name varchar(25),
primary key(city_name))
;
select * from friends1;
insert into friends1 values(1,'Chetan','Salunke','chopda'),
(2,'Sachin', 'Ghogare','Shrirampur'),
(3,'Pradip','Fulpagare','Vela')
;

desc friends1;

# drop default value
alter table friends1
alter city_name drop default;




#_______________________________________________________________________________

#Foreign Key 
#Foreign Key is use to maintain referential integrity between two tables. 
#It points  to the primary key of another table.
#Foreign Key Constraint denotes the parent-child relationship between two tables.

use chetan;
drop table depa;
create table depa(depid int not null,depname varchar(35));
insert into depa values
(1,'Statistics'),
(2,'Actuarial'),
(3,'Mathematics');
select * from depa;
drop table emp;
create table emp(emid int not null,empname varchar(35));
select * from emp;
insert into emp values
(20,'Chetan'),
(10,'Pradip'),
(15,'Sachin');
select * from emp;
alter table depa add constraint fk foreign key(emid) references emp(emid);
alter table emp add constraint pk primary key(emid);
desc emp;
desc depa;













