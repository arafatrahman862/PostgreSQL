select * FROM employees;
create Function emp_count()
returns INT
language SQL
as
$$
select count(*) FROM employees;
$$
;

select emp_count();
create Function delete_emp()
returns void
language SQL
as
$$
delete FROM employees WHERE employee_id = 30;
$$
;

select delete_emp();
create Function delete_emp_by_id(p_emp_id INT)
returns void
language SQL
as
$$
delete FROM employees WHERE employee_id = p_emp_id;
$$
;

select delete_emp_by_id(29);