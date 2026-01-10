use employees;
DROP TABLE IF EXISTS People;

CREATE TABLE People (
    person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50));
    
-- Insert sample data into the table
INSERT INTO People (first_name, last_name, age, city)
VALUES 
    ('John', 'Doe', 30, 'New York'),
    ('Jane', 'Smith', 25, 'Los Angeles'),
    ('Michael', 'Johnson', 40, 'Chicago'),
    ('Emily', 'Brown', 35, 'Houston'),
    ('David', 'Jones', 28, 'San Francisco'),
    ('Sarah', 'Davis', 32, 'Seattle'),
    ('Robert', 'Wilson', 45, 'Boston'),
    ('Jennifer', 'Martinez', 27, 'Miami'),
    ('William', 'Taylor', 38, 'Atlanta'),
    ('Jessica', 'Anderson', 33, 'Dallas'),
    ('Daniel', 'Thomas', 29, 'Philadelphia'),
    ('Maria', 'Jackson', 42, 'Phoenix'),
    ('James', 'White', 31, 'Denver'),
    ('Elizabeth', 'Harris', 36, 'Austin'),
    ('Christopher', 'Clark', 39, 'San Diego'),
    ('Amanda', 'Lewis', 26, 'Portland'),
    ('Matthew', 'Walker', 34, 'Detroit'),
    ('Ashley', 'Allen', 37, 'Las Vegas'),
    ('Joseph', 'Young', 41, 'Nashville'),
    ('Stephanie', 'Scott', 24, 'Orlando');
select * from People;

-- update the data based on the age
update people
set age=40
where person_id = 1;
select * from people;


-- Update the city as per last name
update People
set city = 'Austin'
where last_name = 'Smith';
select * from People;


-- Update age of all people under age 30 to 30
update people
set age=30
where age<30;
select * from People;


-- Update age of all the people in a specific city
update people
set age=age+1
where city = 'new york';
select * from people;


-- Update the first name of people whose age is greater than 35
update people
set first_name = 'senior'
where age>35;
select * from people;

-- Update multiples values in one go
update people 
set first_name = 'Tejashweee', last_name='Nishant', age=22, city = 'guntur'
where person_id = 1;
select * from people;