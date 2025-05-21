select * FROM students;

select country, count(*) FROM students
    GROUP BY country;
select country, avg(age) FROM students
    GROUP BY country
    having avg(age) > 20;


select extract(year from dob) as birth_year, count(*) 
FROM students
    GROUP BY birth_year