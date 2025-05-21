-- Active: 1747430884926@@127.0.0.1@5432@test
create Table "user" (
    id serial primary key,
    username varchar(50) not null
);
create Table post (
    id serial primary key,
    title text not null,
    user_id int REFERENCES "user" (id) on delete cascade
);
create Table post (
    id serial primary key,
    title text not null,
    user_id int REFERENCES "user" (id) on delete set null
);
create Table post (
    id serial primary key,
    title text not null,
    user_id int REFERENCES "user" (id) on delete set DEFAULT DEFAULT 2
);

insert INTO "user" (username) VALUES
    ('user1'),
    ('user2'),
    ('user3'),
    ('user4'),
    ('user5'),
    ('user6'),
    ('user7'),
    ('user8'),
    ('user9'),
    ('user10');


select * FROM "user";
select * FROM post;

insert INTO post (title, user_id) VALUES
    ('post1', 1),
    ('post2', 2),
    ('post3', 3),
    ('post4', 4),
    ('post5', 5),
    ('post6', 6),
    ('post7', 7),
    ('post8', 8),
    ('post9', 9),
    ('post10', 10);

select * FROM post;

drop Table post;
drop Table "user";

delete FROM "user" 
    WHERE id = 4;

