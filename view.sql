-- Active: 1747430884926@@127.0.0.1@5432@test

create view dept_avg_salary
as
select department_name, round(avg(salary)) as avg_salary
from employees
group by department_name;

select * FROM dept_avg_salary;
