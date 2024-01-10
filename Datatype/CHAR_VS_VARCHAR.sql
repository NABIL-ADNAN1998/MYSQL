-- char and varchar
-- when i have fixed size data use char otherwise should use varchar. But both has limit which I provided. 
-- char is faster in fixed size

create database datatypes;

use datatypes;

create table dogs(
    names char(10),
    breed varchar(10)
);

insert into dogs(names, breed) 
values
('bob', 'beagle'),
('robby', 'corgi'),
('prince', 'retriever');

select * from dogs;
