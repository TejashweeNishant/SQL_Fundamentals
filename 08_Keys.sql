use employees;
drop table if exists emp;

-- 1. Primary Key
create table emp(emp_id serial primary key,
name varchar(50),
department varchar(50));

-- 2. Composite Key
create table if not exists orders(
order_id serial,
customer_id int,
order_date date,
primary key(order_id,customer_id));
select * from orders;

-- 3. Foreign Key
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Employees (employee_id));
Select * from Orders; 

-- Unique Constrains
drop table if exists orders;
create table if not exists orders(
order_id serial,
customer_id int,
email varchar(50) unique,
order_date date
);
select * from orders;


-- Unique Constrains as Composite Key
drop table if exists orders;
create table if not exists orders(
order_id serial,
customer_id int,
email varchar(50) unique,
phone_no int unique,
order_date date,
unique (email, phone_no)
);
select * from orders;

-- Check Constrains
drop table if exists orders;
create table if not exists orders(
order_id serial,
customer_id int,
email varchar(50) unique,
age int check(age>=18),
phone_no int unique,
order_date date,
unique (email, phone_no)
);
select * from orders;