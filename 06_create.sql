-- creating a table
create table emp ( emp_id int, name varchar(50), age int, department varchar(50));

drop table if exists emp;
create table if not exists emp ( emp_id int, name varchar(50), age int, department varchar(50)); 
select * from emp;

-- creating a table with constraints
drop table if exists emp;
create table emp(
emp_id int,
name varchar(50) not null,
age int check (age>=18),
department varchar(50));

select * from emp;

drop table if exists emp;
create table emp(
emp_id int serial default value,
name varchar(50) not null,
age int check (age>=18),
department varchar(50),
hire_date date);
select * from emp;
