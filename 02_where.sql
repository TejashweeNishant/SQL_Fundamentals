use employees;

-- Employees with age > 30
select * from Employees where age>30;

-- Employees with age > 30 and from sales
select* from Employees where age>30 and department = 'sales';

-- Employees with age in range 30-40 years
select * from Employees where age>=30 and age<=40;
select * from Employees where age between 30 and 40;

-- Employees from sales or marketing
select * from employees where department='sales' or department='marketing';

-- Searching for name satarting with jo
select * from employees where name like 'jo%';

-- Getting only not null data of department
select * from employees where department is not null;

-- Getting only not null data through out the table
select * from employees where department is not null and age is not null;

-- Getting data using IN command
select * from employees where department in ('sales','marketing');

-- Getting data using NOT IN command
select * from employees where department not in ('sales','marketing');

-- Marketing or Sales employees with age>30
select * from employees where (department in ('sales','marketing')) and age>30;