show timezone;

select now();

create Table timeZ (ts TIMESTAMP without TIME zone,tsz TIMESTAMP with TIME zone);
insert into timeZ values ('2024-02-20 10:39:00', '2024-03-24 12:37:08');

select * from timeZ;

select current_time;
select current_date;

select now()::date;
select now()::time;

select to_char(now(), 'YYYY-MM-DD HH24:MI:SS');

select current_date - INTERVAL '1 day';
select current_date - INTERVAL '1 month';
select current_date - INTERVAL '1 year';
select current_date - INTERVAL '1 year 3 month 2 day';


select age(current_date, '2000-09-27');
select age(current_date, '2002-09-27');

select *, age(current_date, dob) FROM students;

select extract(month FROM '202-01-25'::date);
select extract(day FROM '202-01-25'::date);
select extract(year FROM '202-01-25'::date);

