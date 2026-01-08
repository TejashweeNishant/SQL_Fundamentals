drop table if exists emp;
create table emp(
emp_id int serial default value,
name varchar(50) not null,
age int check (age>=18),
department varchar(50),
hire_date date);
select * from emp;

-- adding a new column
alter table emp add column mail varchar(50);
select * from emp;

-- renaming a column
alter table emp rename column emp_id to id;
select * from emp;

alter table emp drop column mail;
select * from emp;

