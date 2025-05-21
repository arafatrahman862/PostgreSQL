-- Active: 1747430884926@@127.0.0.1@5432@test
create Table "user" (
    id serial primary key,
    username varchar(50) not null
);
create Table post (
    id serial primary key,
    title text not null,
    user_id int REFERENCES "user" (id) 
);