

-- date, time and datetime


Use datatypes;
create table people(
    names varchar(100),
    birthday date,
    birthtime time,
    birthdt datetime
);

insert into people(names, birthday, birthtime, birthdt) 
values 
('padma', '1998-04-14', '04:10:00', '1998-04-14 04:10:00')
('samia', '1998-03-07', '4:10:00', '1998-03-07 04:10:00');



select * from people;


-- current date and time

select curdate();

select curtime();

select now();

insert into people (names, birthday, birthtime, birthdt)
values
('hoodinie', curdate(), curtime(), now());

