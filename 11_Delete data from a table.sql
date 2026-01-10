use employees;
drop table if exists people;

create table people(
person_id serial primary Key,
first_name varchar(50),
last_name varchar(50),
age int,
city varchar(50),
email varchar(100));

INSERT INTO People (first_name, last_name, age, city, email)
VALUES 
    ('John', 'Doe', 30, 'New York', 'john.doe@example.com'),
    ('Jane', 'Smith', 25, 'Los Angeles', 'jane.smith@example.com'),
    ('Michael', 'Johnson', 40, 'Chicago', 'michael.johnson@example.com'),
    ('Emily', 'Brown', 35, 'Houston', 'emily.brown@example.com'),
    ('David', 'Jones', 28, 'San Francisco', 'david.jones@example.com'),
    ('Sarah', 'Davis', 32, 'Seattle', 'sarah.davis@example.com'),
    ('Robert', 'Wilson', 45, 'Boston', 'robert.wilson@example.com'),
    ('Jennifer', 'Martinez', 27, 'Miami', 'jennifer.martinez@example.com'),
    ('William', 'Taylor', 38, 'Atlanta', 'william.taylor@example.com'),
    ('Jessica', 'Anderson', 33, 'Dallas', 'jessica.anderson@example.com'),
    ('Daniel', 'Thomas', 29, 'Philadelphia', 'daniel.thomas@example.com'),
    ('Maria', 'Jackson', 42, 'Phoenix', 'maria.jackson@example.com'),
    ('James', 'White', 31, 'Denver', 'james.white@example.com'),
    ('Elizabeth', 'Harris', 36, 'Austin', 'elizabeth.harris@example.com'),
    ('Christopher', 'Clark', 39, 'San Diego', 'christopher.clark@example.com'),
    ('Amanda', 'Lewis', 26, 'Portland', 'amanda.lewis@example.com'),
    ('Matthew', 'Walker', 34, 'Detroit', 'matthew.walker@example.com'),
    ('Ashley', 'Allen', 37, 'Las Vegas', 'ashley.allen@example.com'),
    ('Joseph', 'Young', 41, 'Nashville', 'joseph.young@example.com'),
    ('Stephanie', 'Scott', 24, 'Orlando', 'stephanie.scott@example.com');
select * from People;

-- Delete the person based on person_id
delete from people
where person_id = 1;
select * from people;

-- Delete all the people under age 30
delete from people
where age<30;
select * from people;

-- Delete all people in a specific city
delete from people
where city = 'las vegas';
select * from people;

-- Delete the data whose last name starts with W
delete from people
where last_name like 'w%';
select * from people;

-- Delete all the rows of a table
delete from people;
select * from people;