create DATABASE test;

create Table person (
    person_id serial PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255),
    age int,
    is_active boolean,
    dob DATE
);

alter Table person RENAME to "user";