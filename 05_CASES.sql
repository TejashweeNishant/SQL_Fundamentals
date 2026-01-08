use employees;

-- Basic case for sales team
select name,
case department
when 'sales' then 'sales_team'
else 'other'
end as Team_name from employees;


-- Basic case for sales team
select name,
case department
when 'sales' then 'sales_team'
when 'marketing' then 'marketing_team'
else 'other'
end as 'Team_name' from employees;

-- CASES WITH RESPECT TO AGE
SELECT NAME,
CASE
WHEN AGE<30 THEN 'YOUNG'
WHEN AGE>=30 AND AGE<=40 THEN 'MID_AGED'
ELSE 'SENIOR'
END AS 'AGE_STATUS' FROM employees;


-- NESTED CASES
SELECT NAME,
CASE
WHEN AGE<30 THEN
CASE
when DEPARTMENT='SALES' THEN 'JR. SALES'
ELSE 'JUNIOR'
END
WHEN AGE>=30 AND AGE<=40 THEN 'MIDDLE_AGED'
ELSE 'SENIOR'
END AS 'AGE_STATUS' from employees;

-- Dealing with null departments
SELECT NAME,
CASE
WHEN DEPARTMENT IS NULL THEN 'DEPARTMENT NOT ASSIGNED'
ELSE DEPARTMENT
END AS 'DEPARTMENT_STATUS' FROM employees;