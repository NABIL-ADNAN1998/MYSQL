
create database instagram;

use instagram;

create table users(
    id int auto_increment primary key,
    username varchar(255) unique not null,
    created_at timestamp default now()
);


create table photos(
    id int auto_increment primary key,
    image_url varchar(255) not null,
    user_id int not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(id)
);


create table comments(
    id int auto_increment primary key,
    comment_text varchar(255) not null,
    user_id int not null,
    photo_id int not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(id),
    foreign key(photo_id) references photos(id)
);



create table likes(
    user_id int not null,
    photo_id int not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(id),
    foreign key(photo_id) references photos(id)
);


create table follows(
    follower_id int not null,
    followee_id int not null,
    created_at timestamp default now(),
    foreign key(follower_id) references users(id),
    foreign key(followee_id) references users(id)
);


create table tags(
    id int primary key auto_increment,
    tag_name varchar(255) not null unique,
    created_at timestamp default now()
);

create table photo_tags(
    tag_id int not null,
    photo_id int not null,
    foreign key(tag_id) references tags(id),
    foreign key(photo_id) references photos(id),
    primary key(photo_id, tag_id)
);
