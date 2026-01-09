use employees;
drop table if exists emp;
create table if not exists emp(
emp_id serial primary key,
first_name varchar(50),
last_name varchar(50),
department_id int,
hire_date date);

-- insert values into a single row
insert into emp(emp_id,first_name,last_name,department_id,hire_date)
value(1,'Tej','Nis',101,'2022-10-17');
select * from emp;	


-- insert multiple rows
insert into emp(emp_id,first_name,last_name,department_id,hire_date)
value
(2,'Rishu','Singh',101,'2022-09-11'),
(3,'Anurag','Ojha',101,'2022-08-01'),
(4,'Raj','Kr.',103,'2022-10-17'),
(5,'Sushant','Singh',111,'2025-12-31'),
(6,'Tej','Nis',101,'2022-10-17');
select * from emp;	

-- Add partial data
insert into emp(first_name,last_name)
values
('Nikhil','Tripathy');
select * from emp;	

-- inserting data in a different order
insert into emp(last_name,first_name,hire_date,department_id, emp_id)
values
('Roy','Rajeev','2022-10-01',101,8);
select * from emp;


-- Adding current and default values
create table ExampleTable(
emp_id serial primary key,
name varchar(50) not null,
hire_date timestamp default current_timestamp,
status varchar(20) default 'Active');
select * from ExampleTable;

insert into ExampleTable(name)
 values ('Ashish');
Select * from ExampleTable; 

insert into ExampleTable(name)
values 
('Ashish'),
('Manish'),
('Parag');
Select * from ExampleTable; 


insert into ExampleTable(name,status) 
values 
('Ashish','Inactive'),
('Manish','Inactive'),
('Parag','Inactive');
Select * from ExampleTable; 