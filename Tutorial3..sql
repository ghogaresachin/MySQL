  /* SQL Constraints.
  SQL Constraints are use to specify any rules for the records in a table 
  Constraints can be used to limit the type of data that can go into a table 
  it ensures the accuracy and reliability of the records the table and
  if there is any violation between the Constraint and the record action,
  the action is aborted. Constraints can be column level or table level.
  Column level constraints apply to a column and table level constraints apply 
   to the whole table.
   
1. Not Null
2. Unique 
3. Primary Key
4. Foreign Key
5. Check 
6. Default
7. Index

*/
show databases;
use customer;
drop table student;
create table student(
id int not null,
first_name varchar(25) not null,
Last_name varchar(25) not null,
age int
);
insert into student values (1,'Sachin','ghogare',22);
select * from student;
desc student;
alter table student modify age int not null;
alter table student modify Last_name varchar(25) null;
alter table student modify Last_name varchar(25) not null;

drop table person;
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(35) not null,
iq_level int not null,
unique(id)
);
select * from person;
insert into person values(1,'Chetan','Salunke',100);
insert into person values(2,'chetan','Salunke',100);

#as we mention id is unique  and if we try to insert values for same id then will get error.
insert into person values(1,'Kanchan','Mahajan',100);
delete from person where id=2;
alter table person
add unique(first_name );
desc person;


#Primary Key
show databases;
use customer;
drop table person1;
create table person1(
id int not null,
first_name varchar(35) not null,
last_name varchar(35) not null,
age int,
constraint pk_person primary key(first_name,last_name)
# add primary key for two columns at one time.
);
select * from person1;
desc person1;

#Drop Primary keys .
alter table person1
drop primary key;
select * from person1;
#Adding Single primary key.
alter table person1 
add primary key(id);
